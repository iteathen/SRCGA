.class public final Lcom/sun/javafx/tk/DummyToolkit;
.super Lcom/sun/javafx/tk/Toolkit;
.source "DummyToolkit.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/Toolkit;-><init>()V

    return-void
.end method


# virtual methods
.method public accumulateStrokeBounds(Lcom/sun/javafx/geom/Shape;[FLjavafx/scene/shape/StrokeType;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;FLcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 14

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "shape":Lcom/sun/javafx/geom/Shape;
    move-object/from16 v2, p2

    .local v2, "bbox":[F
    move-object/from16 v3, p3

    .local v3, "type":Ljavafx/scene/shape/StrokeType;
    move-wide/from16 v4, p4

    .local v4, "strokewidth":D
    move-object/from16 v6, p6

    .local v6, "cap":Ljavafx/scene/shape/StrokeLineCap;
    move-object/from16 v7, p7

    .local v7, "join":Ljavafx/scene/shape/StrokeLineJoin;
    move/from16 v8, p8

    .local v8, "miterLimit":F
    move-object/from16 v9, p9

    .local v9, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v10, Ljava/lang/UnsupportedOperationException;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-string v12, "Not supported yet."

    invoke-direct {v11, v12}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public addRenderJob(Lcom/sun/javafx/tk/RenderJob;)Ljava/util/concurrent/Future;
    .locals 6

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "rj":Lcom/sun/javafx/tk/RenderJob;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public canStartNestedEventLoop()Z
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/DummyToolkit;
    return v0
.end method

.method public closeAppletWindow()V
    .locals 5

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public convertHitInfoToFX(Ljava/lang/Object;)Lcom/sun/javafx/scene/text/HitInfo;
    .locals 6

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "hit":Ljava/lang/Object;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public convertShapeToFXPath(Ljava/lang/Object;)[Ljavafx/scene/shape/PathElement;
    .locals 6

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "shape":Ljava/lang/Object;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createAppletWindow(JLjava/lang/String;)Lcom/sun/javafx/tk/AppletWindow;
    .locals 9

    .prologue
    .line 116
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-wide v2, p1

    .local v2, "parent":J
    move-object v4, p3

    .local v4, "serverName":Ljava/lang/String;
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Not supported yet."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected createColorPaint(Ljavafx/scene/paint/Color;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "paint":Ljavafx/scene/paint/Color;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected createImagePatternPaint(Ljavafx/scene/paint/ImagePattern;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "paint":Ljavafx/scene/paint/ImagePattern;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected createLinearGradientPaint(Ljavafx/scene/paint/LinearGradient;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "paint":Ljavafx/scene/paint/LinearGradient;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createPerformanceTracker()Lcom/sun/javafx/perf/PerformanceTracker;
    .locals 5

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createPlatformImage(II)Lcom/sun/javafx/tk/PlatformImage;
    .locals 7

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Not supported yet."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected createRadialGradientPaint(Ljavafx/scene/paint/RadialGradient;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "paint":Ljavafx/scene/paint/RadialGradient;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createSVGPath2D(Ljavafx/scene/shape/SVGPath;)Lcom/sun/javafx/geom/Path2D;
    .locals 6

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "svgpath":Ljavafx/scene/shape/SVGPath;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createSVGPathObject(Ljavafx/scene/shape/SVGPath;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "svgpath":Ljavafx/scene/shape/SVGPath;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createStrokedShape(Lcom/sun/javafx/geom/Shape;Ljavafx/scene/shape/StrokeType;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;F[FF)Lcom/sun/javafx/geom/Shape;
    .locals 15

    .prologue
    .line 230
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object/from16 v2, p1

    .local v2, "shape":Lcom/sun/javafx/geom/Shape;
    move-object/from16 v3, p2

    .local v3, "pgtype":Ljavafx/scene/shape/StrokeType;
    move-wide/from16 v4, p3

    .local v4, "strokewidth":D
    move-object/from16 v6, p5

    .local v6, "pgcap":Ljavafx/scene/shape/StrokeLineCap;
    move-object/from16 v7, p6

    .local v7, "pgjoin":Ljavafx/scene/shape/StrokeLineJoin;
    move/from16 v8, p7

    .local v8, "miterLimit":F
    move-object/from16 v9, p8

    .local v9, "dashArray":[F
    move/from16 v10, p9

    .local v10, "dashOffset":F
    new-instance v11, Ljava/lang/UnsupportedOperationException;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    const-string v13, "Not supported yet."

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public createTKEmbeddedStage(Lcom/sun/javafx/embed/HostInterface;Ljava/security/AccessControlContext;)Lcom/sun/javafx/tk/TKStage;
    .locals 7

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "host":Lcom/sun/javafx/embed/HostInterface;
    move-object v2, p2

    .local v2, "acc":Ljava/security/AccessControlContext;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Not supported yet."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public createTKPopupStage(Ljavafx/stage/Window;Ljavafx/stage/StageStyle;Lcom/sun/javafx/tk/TKStage;Ljava/security/AccessControlContext;)Lcom/sun/javafx/tk/TKStage;
    .locals 9

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "peerWindow":Ljavafx/stage/Window;
    move-object v2, p2

    .local v2, "popupStyle":Ljavafx/stage/StageStyle;
    move-object v3, p3

    .local v3, "owner":Lcom/sun/javafx/tk/TKStage;
    move-object v4, p4

    .local v4, "acc":Ljava/security/AccessControlContext;
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Not supported yet."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public createTKStage(Ljavafx/stage/Window;ZLjavafx/stage/StageStyle;ZLjavafx/stage/Modality;Lcom/sun/javafx/tk/TKStage;ZLjava/security/AccessControlContext;)Lcom/sun/javafx/tk/TKStage;
    .locals 13

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "peerWindow":Ljavafx/stage/Window;
    move v2, p2

    .local v2, "securityDialog":Z
    move-object/from16 v3, p3

    .local v3, "stageStyle":Ljavafx/stage/StageStyle;
    move/from16 v4, p4

    .local v4, "primary":Z
    move-object/from16 v5, p5

    .local v5, "modality":Ljavafx/stage/Modality;
    move-object/from16 v6, p6

    .local v6, "owner":Lcom/sun/javafx/tk/TKStage;
    move/from16 v7, p7

    .local v7, "rtl":Z
    move-object/from16 v8, p8

    .local v8, "acc":Ljava/security/AccessControlContext;
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string v11, "Not supported yet."

    invoke-direct {v10, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public defer(Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public enableDrop(Lcom/sun/javafx/tk/TKScene;Lcom/sun/javafx/tk/TKDropTargetListener;)V
    .locals 7

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "s":Lcom/sun/javafx/tk/TKScene;
    move-object v2, p2

    .local v2, "l":Lcom/sun/javafx/tk/TKDropTargetListener;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Not supported yet."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public enterNestedEventLoop(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public exitNestedEventLoop(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "rval":Ljava/lang/Object;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Not supported yet."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getBestCursorSize(II)Ljavafx/geometry/Dimension2D;
    .locals 7

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move v1, p1

    .local v1, "preferredWidth":I
    move v2, p2

    .local v2, "preferredHeight":I
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Not supported yet."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getContextMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFilterContext(Ljava/lang/Object;)Lcom/sun/scenario/effect/FilterContext;
    .locals 6

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "config":Ljava/lang/Object;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFontLoader()Lcom/sun/javafx/tk/FontLoader;
    .locals 5

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getKeyCodeForChar(Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "character":Ljava/lang/String;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getMasterTimer()Lcom/sun/scenario/animation/AbstractMasterTimer;
    .locals 2

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/DummyToolkit;
    return-object v0
.end method

.method public getMaximumCursorColors()I
    .locals 5

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMultiClickMaxX()I
    .locals 2

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/DummyToolkit;
    return v0
.end method

.method public getMultiClickMaxY()I
    .locals 2

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/DummyToolkit;
    return v0
.end method

.method public getMultiClickTime()J
    .locals 3

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/DummyToolkit;
    return-wide v0
.end method

.method public getNamedClipboard(Ljava/lang/String;)Lcom/sun/javafx/tk/TKClipboard;
    .locals 6

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPerformanceTracker()Lcom/sun/javafx/perf/PerformanceTracker;
    .locals 5

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPlatformShortcutKey()Ljavafx/scene/input/KeyCode;
    .locals 5

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPrimaryScreen()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRefreshRate()I
    .locals 5

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getScreenConfigurationAccessor()Lcom/sun/javafx/tk/ScreenConfigurationAccessor;
    .locals 5

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getScreens()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSystemClipboard()Lcom/sun/javafx/tk/TKClipboard;
    .locals 5

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSystemMenu()Lcom/sun/javafx/tk/TKSystemMenu;
    .locals 5

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTextLayoutFactory()Lcom/sun/javafx/scene/text/TextLayoutFactory;
    .locals 5

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public imageContains(Ljava/lang/Object;FF)Z
    .locals 8

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "image":Ljava/lang/Object;
    move v2, p2

    .local v2, "x":F
    move v3, p3

    .local v3, "y":F
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Not supported yet."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public init()Z
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/DummyToolkit;
    return v0
.end method

.method public installInputMethodRequests(Lcom/sun/javafx/tk/TKScene;Ljavafx/scene/input/InputMethodRequests;)V
    .locals 7

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "scene":Lcom/sun/javafx/tk/TKScene;
    move-object v2, p2

    .local v2, "requests":Ljavafx/scene/input/InputMethodRequests;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Not supported yet."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public isBackwardTraversalKey(Ljavafx/scene/input/KeyEvent;)Z
    .locals 6

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isForwardTraversalKey(Ljavafx/scene/input/KeyEvent;)Z
    .locals 6

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isNestedLoopRunning()Z
    .locals 5

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public loadImage(Ljava/io/InputStream;IIZZ)Lcom/sun/javafx/tk/ImageLoader;
    .locals 10

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "stream":Ljava/io/InputStream;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move v4, p4

    .local v4, "preserveRatio":Z
    move v5, p5

    .local v5, "smooth":Z
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Not supported yet."

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public loadImage(Ljava/lang/String;IIZZ)Lcom/sun/javafx/tk/ImageLoader;
    .locals 10

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move v4, p4

    .local v4, "preserveRatio":Z
    move v5, p5

    .local v5, "smooth":Z
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Not supported yet."

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public loadImageAsync(Lcom/sun/javafx/runtime/async/AsyncOperationListener;Ljava/lang/String;IIZZ)Lcom/sun/javafx/runtime/async/AsyncOperation;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/runtime/async/AsyncOperationListener",
            "<+",
            "Lcom/sun/javafx/tk/ImageLoader;",
            ">;",
            "Ljava/lang/String;",
            "IIZZ)",
            "Lcom/sun/javafx/runtime/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/runtime/async/AsyncOperationListener;, "Lcom/sun/javafx/runtime/async/AsyncOperationListener<+Lcom/sun/javafx/tk/ImageLoader;>;"
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move/from16 v5, p5

    .local v5, "preserveRatio":Z
    move/from16 v6, p6

    .local v6, "smooth":Z
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Not supported yet."

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public loadPlatformImage(Ljava/lang/Object;)Lcom/sun/javafx/tk/ImageLoader;
    .locals 6

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "platformImage":Ljava/lang/Object;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public pauseRenderer()V
    .locals 5

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerDragGestureListener(Lcom/sun/javafx/tk/TKScene;Ljava/util/Set;Lcom/sun/javafx/tk/TKDragGestureListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/tk/TKScene;",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/TransferMode;",
            ">;",
            "Lcom/sun/javafx/tk/TKDragGestureListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "s":Lcom/sun/javafx/tk/TKScene;
    move-object v2, p2

    .local v2, "tms":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/TransferMode;>;"
    move-object v3, p3

    .local v3, "l":Lcom/sun/javafx/tk/TKDragGestureListener;
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Not supported yet."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public renderToImage(Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "context":Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public requestNextPulse()V
    .locals 5

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resumeRenderer()V
    .locals 5

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAnimationRunnable(Lcom/sun/scenario/DelayedRunnable;)V
    .locals 6

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "animationRunnable":Lcom/sun/scenario/DelayedRunnable;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setScreenConfigurationListener(Lcom/sun/javafx/tk/TKScreenConfigurationListener;)Lcom/sun/javafx/tk/ScreenConfigurationAccessor;
    .locals 6

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/tk/TKScreenConfigurationListener;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public showDirectoryChooser(Lcom/sun/javafx/tk/TKStage;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 8

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "ownerWindow":Lcom/sun/javafx/tk/TKStage;
    move-object v2, p2

    .local v2, "title":Ljava/lang/String;
    move-object v3, p3

    .local v3, "initialDirectory":Ljava/io/File;
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Not supported yet."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public showFileChooser(Lcom/sun/javafx/tk/TKStage;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/sun/javafx/tk/FileChooserType;Ljava/util/List;Ljavafx/stage/FileChooser$ExtensionFilter;)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/tk/TKStage;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/tk/FileChooserType;",
            "Ljava/util/List",
            "<",
            "Ljavafx/stage/FileChooser$ExtensionFilter;",
            ">;",
            "Ljavafx/stage/FileChooser$ExtensionFilter;",
            ")",
            "Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;"
        }
    .end annotation

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "ownerWindow":Lcom/sun/javafx/tk/TKStage;
    move-object v2, p2

    .local v2, "title":Ljava/lang/String;
    move-object v3, p3

    .local v3, "initialDirectory":Ljava/io/File;
    move-object/from16 v4, p4

    .local v4, "initialFileName":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "fileChooserType":Lcom/sun/javafx/tk/FileChooserType;
    move-object/from16 v6, p6

    .local v6, "extensionFilters":Ljava/util/List;, "Ljava/util/List<Ljavafx/stage/FileChooser$ExtensionFilter;>;"
    move-object/from16 v7, p7

    .local v7, "selectedFilter":Ljavafx/stage/FileChooser$ExtensionFilter;
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "Not supported yet."

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public startDrag(Lcom/sun/javafx/tk/TKScene;Ljava/util/Set;Lcom/sun/javafx/tk/TKDragSourceListener;Ljavafx/scene/input/Dragboard;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/tk/TKScene;",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/TransferMode;",
            ">;",
            "Lcom/sun/javafx/tk/TKDragSourceListener;",
            "Ljavafx/scene/input/Dragboard;",
            ")V"
        }
    .end annotation

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "scene":Lcom/sun/javafx/tk/TKScene;
    move-object v2, p2

    .local v2, "tms":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/TransferMode;>;"
    move-object v3, p3

    .local v3, "l":Lcom/sun/javafx/tk/TKDragSourceListener;
    move-object v4, p4

    .local v4, "dragboard":Ljavafx/scene/input/Dragboard;
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Not supported yet."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public startup(Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public strokeContains(Lcom/sun/javafx/geom/Shape;DDLjavafx/scene/shape/StrokeType;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;F)Z
    .locals 16

    .prologue
    .line 225
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object/from16 v1, p1

    .local v1, "shape":Lcom/sun/javafx/geom/Shape;
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-object/from16 v6, p6

    .local v6, "type":Ljavafx/scene/shape/StrokeType;
    move-wide/from16 v7, p7

    .local v7, "strokewidth":D
    move-object/from16 v9, p9

    .local v9, "cap":Ljavafx/scene/shape/StrokeLineCap;
    move-object/from16 v10, p10

    .local v10, "join":Ljavafx/scene/shape/StrokeLineJoin;
    move/from16 v11, p11

    .local v11, "miterLimit":F
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    const-string v14, "Not supported yet."

    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public toFilterable(Ljavafx/scene/image/Image;)Lcom/sun/scenario/effect/Filterable;
    .locals 6

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "img":Ljavafx/scene/image/Image;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public waitFor(Lcom/sun/javafx/tk/Toolkit$Task;)V
    .locals 6

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/DummyToolkit;
    move-object v1, p1

    .local v1, "t":Lcom/sun/javafx/tk/Toolkit$Task;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
