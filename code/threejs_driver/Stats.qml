CheckBox {
    id: cs
    width: 55
    text: "FPS"
    
    onCheckedChanged: {
        loadStats();
        if (stats) stats.domElement.style.display = checked ? "block" : "none";
        if (rendererStats) rendererStats.domElement.style.display = checked ? "block" : "none";
    }

    property var stats
    property var rendererStats

    RenderTick {
        enabled: cs.checked
        onAction: {
            if (cs.stats)
                cs.stats.update();

            if (cs.rendererStats) {
                cs.rendererStats.update( renderer ); // работаем с renderer а не с selectedRenderer, т.к. сейчас они не содержат статистик, а все-равно все приходит в renderer
            }
        }
    }

    property bool loaded: false

    function loadStats()
    {
        if (loaded) return;
        loaded = true;

        la_require("three.js/examples/js/libs/stats.min.js", function() {
            var stats = new Stats();
            cs.stats = stats;
            stats.domElement.style.position = 'absolute';
            stats.domElement.style.bottom = '2px'; // конечно надо от сцены играть
            stats.domElement.style.right = '2px';
            stats.domElement.style.zIndex = 5000;

            document.body.appendChild( stats.domElement );
        } );

        la_require("rendererstats.js", function() {
            var rendererStats = new RendererStats()
            cs.rendererStats = rendererStats;

            rendererStats.domElement.style.position   = 'absolute'
            rendererStats.domElement.style.bottom  = '52px'
            rendererStats.domElement.style.right    = '2px'
            rendererStats.domElement.style.zIndex = 5000;
            document.body.appendChild( rendererStats.domElement )
        });
    }
}
