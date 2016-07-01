.class Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
.super Lcom/sun/glass/ui/View$EventHandler;
.source "GlassViewEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;,
        Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;,
        Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;
    }
.end annotation


# static fields
.field static rotateGestureEnabled:Z

.field static scrollGestureEnabled:Z

.field static zoomGestureEnabled:Z


# instance fields
.field private final collector:Lcom/sun/javafx/tk/quantum/PaintCollector;

.field private final dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

.field private dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

.field private final gestures:Lcom/sun/javafx/tk/quantum/GestureRecognizers;

.field private final keyNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;

.field private mouseButtonPressedMask:I

.field private final mouseNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;

.field private scene:Lcom/sun/javafx/tk/quantum/ViewScene;

.field private final viewNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$32;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/tk/quantum/ViewScene;)V
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v1, p1

    .local v1, "scene":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/glass/ui/View$EventHandler;-><init>()V

    .line 128
    move-object v2, v0

    invoke-static {}, Lcom/sun/javafx/tk/quantum/PaintCollector;->getInstance()Lcom/sun/javafx/tk/quantum/PaintCollector;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->collector:Lcom/sun/javafx/tk/quantum/PaintCollector;

    .line 146
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;-><init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$1;)V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->keyNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;

    .line 272
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->mouseButtonPressedMask:I

    .line 274
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;-><init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$1;)V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->mouseNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;

    .line 748
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;-><init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$1;)V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->viewNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;

    .line 83
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 85
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;-><init>(Lcom/sun/javafx/tk/quantum/GlassScene;)V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    .line 87
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/tk/quantum/GestureRecognizers;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lcom/sun/javafx/tk/quantum/GestureRecognizers;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->gestures:Lcom/sun/javafx/tk/quantum/GestureRecognizers;

    .line 88
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->gestures:Lcom/sun/javafx/tk/quantum/GestureRecognizers;

    new-instance v3, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;-><init>(Lcom/sun/javafx/tk/quantum/ViewScene;)V

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->add(Lcom/sun/javafx/tk/quantum/GestureRecognizer;)V

    .line 91
    :cond_1
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->zoomGestureEnabled:Z

    if-eqz v2, :cond_2

    .line 92
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->gestures:Lcom/sun/javafx/tk/quantum/GestureRecognizers;

    new-instance v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;-><init>(Lcom/sun/javafx/tk/quantum/ViewScene;)V

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->add(Lcom/sun/javafx/tk/quantum/GestureRecognizer;)V

    .line 94
    :cond_2
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->rotateGestureEnabled:Z

    if-eqz v2, :cond_3

    .line 95
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->gestures:Lcom/sun/javafx/tk/quantum/GestureRecognizers;

    new-instance v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;-><init>(Lcom/sun/javafx/tk/quantum/ViewScene;)V

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->add(Lcom/sun/javafx/tk/quantum/GestureRecognizer;)V

    .line 97
    :cond_3
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scrollGestureEnabled:Z

    if-eqz v2, :cond_4

    .line 98
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->gestures:Lcom/sun/javafx/tk/quantum/GestureRecognizers;

    new-instance v3, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;-><init>(Lcom/sun/javafx/tk/quantum/ViewScene;)V

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->add(Lcom/sun/javafx/tk/quantum/GestureRecognizer;)V

    .line 100
    :cond_4
    return-void
.end method

.method static synthetic access$100(I)Ljavafx/event/EventType;
    .locals 2

    .prologue
    .line 64
    move v0, p0

    .local v0, "x0":I
    move v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->keyEventType(I)Ljavafx/event/EventType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":I
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;II[CI)Z
    .locals 10

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move v1, p1

    .local v1, "x1":I
    move v2, p2

    .local v2, "x2":I
    move-object v3, p3

    .local v3, "x3":[C
    move v4, p4

    .local v4, "x4":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->checkFullScreenKeyEvent(II[CI)Z

    move-result v5

    move v0, v5

    .end local v0    # "x0":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return v0
.end method

.method static synthetic access$500(I)Ljavafx/event/EventType;
    .locals 2

    .prologue
    .line 64
    move v0, p0

    .local v0, "x0":I
    move v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->mouseEventType(I)Ljavafx/event/EventType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":I
    return-object v0
.end method

.method static synthetic access$600(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)I
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->mouseButtonPressedMask:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return v0
.end method

.method static synthetic access$602(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;I)I
    .locals 7

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->mouseButtonPressedMask:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return v0
.end method

.method static synthetic access$700(I)Ljavafx/scene/input/MouseButton;
    .locals 2

    .prologue
    .line 64
    move v0, p0

    .local v0, "x0":I
    move v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->mouseEventButton(I)Ljavafx/scene/input/MouseButton;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":I
    return-object v0
.end method

.method static synthetic access$900(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/PaintCollector;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->collector:Lcom/sun/javafx/tk/quantum/PaintCollector;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleKeyEvent$335()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleMouseEvent$336()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$10(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;I)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleDragEnd$348(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$11(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleViewEvent$350()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$12(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDDDDDIIIIIIZZ)Ljava/lang/Void;
    .locals 47

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move-object/from16 v23, v0

    move/from16 v24, v1

    move-object/from16 v25, v2

    move-wide/from16 v26, v3

    move-wide/from16 v28, v5

    move-wide/from16 v30, v7

    move-wide/from16 v32, v9

    move-wide/from16 v34, v11

    move-wide/from16 v36, v13

    move/from16 v38, v15

    move/from16 v39, v16

    move/from16 v40, v17

    move/from16 v41, v18

    move/from16 v42, v19

    move/from16 v43, v20

    move/from16 v44, v21

    move/from16 v45, v22

    invoke-direct/range {v23 .. v45}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleScrollGestureEvent$352(ILcom/sun/glass/ui/View;DDDDDDIIIIIIZZ)Ljava/lang/Void;

    move-result-object v23

    move-object/from16 v0, v23

    return-object v0
.end method

.method static synthetic access$lambda$13(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/lang/Void;
    .locals 29

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object v15, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    invoke-direct/range {v15 .. v28}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleZoomGestureEvent$354(ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/lang/Void;

    move-result-object v15

    move-object v1, v15

    return-object v1
.end method

.method static synthetic access$lambda$14(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/lang/Void;
    .locals 29

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object v15, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    invoke-direct/range {v15 .. v28}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleRotateGestureEvent$356(ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/lang/Void;

    move-result-object v15

    move-object v1, v15

    return-object v1
.end method

.method static synthetic access$lambda$15(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;IIIIIIZ)Ljava/lang/Void;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object v10, v0

    move v11, v1

    move-object v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-direct/range {v10 .. v19}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleSwipeGestureEvent$358(ILcom/sun/glass/ui/View;IIIIIIZ)Ljava/lang/Void;

    move-result-object v10

    move-object v0, v10

    return-object v0
.end method

.method static synthetic access$lambda$16(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;JIZI)Ljava/lang/Void;
    .locals 13

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v7, v1

    move-wide v8, v2

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleBeginTouchEvent$360(JIZI)Ljava/lang/Void;

    move-result-object v7

    move-object v1, v7

    return-object v1
.end method

.method static synthetic access$lambda$17(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;JIIII)Ljava/lang/Void;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v9, v0

    move v10, v1

    move-object v11, v2

    move-wide v12, v3

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v9 .. v17}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleNextTouchEvent$362(ILcom/sun/glass/ui/View;JIIII)Ljava/lang/Void;

    move-result-object v9

    move-object v0, v9

    return-object v0
.end method

.method static synthetic access$lambda$18(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleEndTouchEvent$364()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$19(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$null$363()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/glass/ui/View;IIIIZ)Ljava/lang/Void;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleMenuEvent$338(Lcom/sun/glass/ui/View;IIIIZ)Ljava/lang/Void;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method static synthetic access$lambda$20(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;JIIII)Ljava/lang/Void;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v9, v0

    move v10, v1

    move-object v11, v2

    move-wide v12, v3

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v9 .. v17}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$null$361(ILcom/sun/glass/ui/View;JIIII)Ljava/lang/Void;

    move-result-object v9

    move-object v0, v9

    return-object v0
.end method

.method static synthetic access$lambda$21(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;JIZI)Ljava/lang/Void;
    .locals 13

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v7, v1

    move-wide v8, v2

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$null$359(JIZI)Ljava/lang/Void;

    move-result-object v7

    move-object v1, v7

    return-object v1
.end method

.method static synthetic access$lambda$22(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;IIIIIIZ)Ljava/lang/Void;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object v10, v0

    move v11, v1

    move-object v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-direct/range {v10 .. v19}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$null$357(ILcom/sun/glass/ui/View;IIIIIIZ)Ljava/lang/Void;

    move-result-object v10

    move-object v0, v10

    return-object v0
.end method

.method static synthetic access$lambda$23(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/lang/Void;
    .locals 29

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object v15, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    invoke-direct/range {v15 .. v28}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$null$355(ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/lang/Void;

    move-result-object v15

    move-object v1, v15

    return-object v1
.end method

.method static synthetic access$lambda$24(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/lang/Void;
    .locals 29

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object v15, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    invoke-direct/range {v15 .. v28}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$null$353(ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/lang/Void;

    move-result-object v15

    move-object v1, v15

    return-object v1
.end method

.method static synthetic access$lambda$25(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDDDDDIIIIIIZZ)Ljava/lang/Void;
    .locals 47

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move-object/from16 v23, v0

    move/from16 v24, v1

    move-object/from16 v25, v2

    move-wide/from16 v26, v3

    move-wide/from16 v28, v5

    move-wide/from16 v30, v7

    move-wide/from16 v32, v9

    move-wide/from16 v34, v11

    move-wide/from16 v36, v13

    move/from16 v38, v15

    move/from16 v39, v16

    move/from16 v40, v17

    move/from16 v41, v18

    move/from16 v42, v19

    move/from16 v43, v20

    move/from16 v44, v21

    move/from16 v45, v22

    invoke-direct/range {v23 .. v45}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$null$351(ILcom/sun/glass/ui/View;DDDDDDIIIIIIZZ)Ljava/lang/Void;

    move-result-object v23

    move-object/from16 v0, v23

    return-object v0
.end method

.method static synthetic access$lambda$26(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Ljava/lang/String;I[I[I[BI)Ljava/lang/Void;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$null$341(Ljava/lang/String;I[I[I[BI)Ljava/lang/Void;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method static synthetic access$lambda$27(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/glass/ui/View;DDDDIIIIIIIII)Ljava/lang/Void;
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-wide/from16 v21, v2

    move-wide/from16 v23, v4

    move-wide/from16 v25, v6

    move-wide/from16 v27, v8

    move/from16 v29, v10

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v32, v13

    move/from16 v33, v14

    move/from16 v34, v15

    move/from16 v35, v16

    move/from16 v36, v17

    move/from16 v37, v18

    invoke-direct/range {v19 .. v37}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$null$339(Lcom/sun/glass/ui/View;DDDDIIIIIIIII)Ljava/lang/Void;

    move-result-object v19

    move-object/from16 v0, v19

    return-object v0
.end method

.method static synthetic access$lambda$28(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/glass/ui/View;IIIIZ)Ljava/lang/Void;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$null$337(Lcom/sun/glass/ui/View;IIIIZ)Ljava/lang/Void;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method static synthetic access$lambda$29()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$static$334()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/glass/ui/View;DDDDIIIIIIIII)Ljava/lang/Void;
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-wide/from16 v21, v2

    move-wide/from16 v23, v4

    move-wide/from16 v25, v6

    move-wide/from16 v27, v8

    move/from16 v29, v10

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v32, v13

    move/from16 v33, v14

    move/from16 v34, v15

    move/from16 v35, v16

    move/from16 v36, v17

    move/from16 v37, v18

    invoke-direct/range {v19 .. v37}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleScrollEvent$340(Lcom/sun/glass/ui/View;DDDDIIIIIIIII)Ljava/lang/Void;

    move-result-object v19

    move-object/from16 v0, v19

    return-object v0
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Ljava/lang/String;I[I[I[BI)Ljava/lang/Void;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleInputMethodEvent$342(Ljava/lang/String;I[I[I[BI)Ljava/lang/Void;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleDragEnter$343(IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/glass/ui/ClipboardAssistance;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleDragLeave$344(Lcom/sun/glass/ui/ClipboardAssistance;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleDragDrop$345(IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleDragOver$346(IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method static synthetic access$lambda$9(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljava/lang/Object;
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->lambda$handleDragStart$347(IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method private static actionToTransferMode(I)Ljavafx/scene/input/TransferMode;
    .locals 5

    .prologue
    .line 579
    move v0, p0

    .local v0, "dropActions":I
    move v1, v0

    if-nez v1, :cond_0

    .line 580
    const/4 v1, 0x0

    move-object v0, v1

    .line 602
    .end local v0    # "dropActions":I
    :goto_0
    return-object v0

    .line 581
    .restart local v0    # "dropActions":I
    :cond_0
    move v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    move v1, v0

    const v2, 0x40000001    # 2.0000002f

    if-ne v1, v2, :cond_2

    .line 585
    :cond_1
    sget-object v1, Ljavafx/scene/input/TransferMode;->COPY:Ljavafx/scene/input/TransferMode;

    move-object v0, v1

    goto :goto_0

    .line 586
    :cond_2
    move v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    move v1, v0

    const v2, 0x40000002    # 2.0000005f

    if-ne v1, v2, :cond_4

    .line 590
    :cond_3
    sget-object v1, Ljavafx/scene/input/TransferMode;->MOVE:Ljavafx/scene/input/TransferMode;

    move-object v0, v1

    goto :goto_0

    .line 591
    :cond_4
    move v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_5

    .line 592
    sget-object v1, Ljavafx/scene/input/TransferMode;->LINK:Ljavafx/scene/input/TransferMode;

    move-object v0, v1

    goto :goto_0

    .line 593
    :cond_5
    move v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 594
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v1, :cond_6

    .line 595
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ambiguous drop action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 602
    :cond_6
    :goto_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 598
    :cond_7
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v1, :cond_6

    .line 599
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown drop action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static allowableFullScreenKeys(I)Z
    .locals 2

    .prologue
    .line 107
    move v0, p0

    .local v0, "key":I
    move v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 121
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "key":I
    :goto_0
    return v0

    .line 119
    .restart local v0    # "key":I
    :sswitch_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method private checkFullScreenKeyEvent(II[CI)Z
    .locals 6

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move v1, p1

    .local v1, "type":I
    move v2, p2

    .local v2, "key":I
    move-object v3, p3

    .local v3, "chars":[C
    move v4, p4

    .local v4, "modifiers":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    invoke-virtual {v5}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/tk/quantum/WindowStage;->isTrustedFullScreen()Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v2

    invoke-static {v5}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->allowableFullScreenKeys(I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static inputMethodEventAttrValue(I[I[B)B
    .locals 8

    .prologue
    .line 473
    move v0, p0

    .local v0, "pos":I
    move-object v1, p1

    .local v1, "attrBoundary":[I
    move-object v2, p2

    .local v2, "attrValue":[B
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 474
    const/4 v4, 0x0

    move v3, v4

    .local v3, "current":I
    :goto_0
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_1

    .line 475
    move v4, v0

    move-object v5, v1

    move v6, v3

    aget v5, v5, v6

    if-lt v4, v5, :cond_0

    move v4, v0

    move-object v5, v1

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    if-ge v4, v5, :cond_0

    .line 477
    move-object v4, v2

    move v5, v3

    aget-byte v4, v4, v5

    move v0, v4

    .line 481
    .end local v0    # "pos":I
    .end local v3    # "current":I
    :goto_1
    return v0

    .line 474
    .restart local v0    # "pos":I
    .restart local v3    # "current":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 481
    .end local v3    # "current":I
    :cond_1
    const/4 v4, 0x4

    move v0, v4

    goto :goto_1
.end method

.method private static inputMethodEventComposed(Ljava/lang/String;I[I[I[B)Ljavafx/collections/ObservableList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[I[I[B)",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/input/InputMethodTextRun;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    move-object/from16 v0, p0

    .local v0, "text":Ljava/lang/String;
    move/from16 v1, p1

    .local v1, "commitCount":I
    move-object/from16 v2, p2

    .local v2, "clauseBoundary":[I
    move-object/from16 v3, p3

    .local v3, "attrBoundary":[I
    move-object/from16 v4, p4

    .local v4, "attrValue":[B
    new-instance v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$1;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$1;-><init>()V

    move-object v5, v8

    .line 493
    .local v5, "composed":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/input/InputMethodTextRun;>;"
    move v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 494
    move-object v8, v2

    if-nez v8, :cond_1

    .line 496
    move-object v8, v5

    new-instance v9, Ljavafx/scene/input/InputMethodTextRun;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    move v12, v1

    .line 497
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljavafx/scene/input/InputMethodHighlight;->UNSELECTED_RAW:Ljavafx/scene/input/InputMethodHighlight;

    invoke-direct {v10, v11, v12}, Ljavafx/scene/input/InputMethodTextRun;-><init>(Ljava/lang/String;Ljavafx/scene/input/InputMethodHighlight;)V

    .line 496
    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 529
    :cond_0
    move-object v8, v5

    move-object v0, v8

    .end local v0    # "text":Ljava/lang/String;
    return-object v0

    .line 500
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    move v6, v8

    .local v6, "current":I
    :goto_0
    move v8, v6

    move-object v9, v2

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_0

    .line 501
    move-object v8, v2

    move v9, v6

    aget v8, v8, v9

    move v9, v1

    if-ge v8, v9, :cond_2

    .line 502
    .line 500
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 506
    :cond_2
    move-object v8, v2

    move v9, v6

    aget v8, v8, v9

    move-object v9, v3

    move-object v10, v4

    invoke-static {v8, v9, v10}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->inputMethodEventAttrValue(I[I[B)B

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 519
    sget-object v8, Ljavafx/scene/input/InputMethodHighlight;->UNSELECTED_RAW:Ljavafx/scene/input/InputMethodHighlight;

    move-object v7, v8

    .line 522
    .local v7, "highlight":Ljavafx/scene/input/InputMethodHighlight;
    :goto_2
    move-object v8, v5

    new-instance v9, Ljavafx/scene/input/InputMethodTextRun;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    move-object v12, v2

    move v13, v6

    aget v12, v12, v13

    move-object v13, v2

    move v14, v6

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    aget v13, v13, v14

    .line 523
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Ljavafx/scene/input/InputMethodTextRun;-><init>(Ljava/lang/String;Ljavafx/scene/input/InputMethodHighlight;)V

    .line 522
    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_1

    .line 508
    .end local v7    # "highlight":Ljavafx/scene/input/InputMethodHighlight;
    :pswitch_0
    sget-object v8, Ljavafx/scene/input/InputMethodHighlight;->SELECTED_CONVERTED:Ljavafx/scene/input/InputMethodHighlight;

    move-object v7, v8

    .line 509
    .restart local v7    # "highlight":Ljavafx/scene/input/InputMethodHighlight;
    goto :goto_2

    .line 511
    .end local v7    # "highlight":Ljavafx/scene/input/InputMethodHighlight;
    :pswitch_1
    sget-object v8, Ljavafx/scene/input/InputMethodHighlight;->UNSELECTED_CONVERTED:Ljavafx/scene/input/InputMethodHighlight;

    move-object v7, v8

    .line 512
    .restart local v7    # "highlight":Ljavafx/scene/input/InputMethodHighlight;
    goto :goto_2

    .line 514
    .end local v7    # "highlight":Ljavafx/scene/input/InputMethodHighlight;
    :pswitch_2
    sget-object v8, Ljavafx/scene/input/InputMethodHighlight;->SELECTED_RAW:Ljavafx/scene/input/InputMethodHighlight;

    move-object v7, v8

    .line 515
    .restart local v7    # "highlight":Ljavafx/scene/input/InputMethodHighlight;
    goto :goto_2

    .line 506
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static keyEventType(I)Ljavafx/event/EventType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    move v0, p0

    .local v0, "glassType":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 139
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v1, :cond_0

    .line 140
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Glass key event type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "glassType":I
    :goto_0
    return-object v0

    .line 133
    .restart local v0    # "glassType":I
    :pswitch_0
    sget-object v1, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 135
    :pswitch_1
    sget-object v1, Ljavafx/scene/input/KeyEvent;->KEY_RELEASED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 137
    :pswitch_2
    sget-object v1, Ljavafx/scene/input/KeyEvent;->KEY_TYPED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private synthetic lambda$handleBeginTouchEvent$360(JIZI)Ljava/lang/Void;
    .locals 13

    .prologue
    .line 1090
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-wide v2, p1

    .local v2, "time":J
    move/from16 v4, p3

    .local v4, "touchEventCount":I
    move/from16 v5, p4

    .local v5, "isDirect":Z
    move/from16 v6, p5

    .local v6, "modifiers":I
    move-object v7, v1

    move-wide v8, v2

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-static/range {v7 .. v12}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$24;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;JIZI)Ljava/security/PrivilegedAction;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 1100
    invoke-virtual {v8}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v8

    .line 1090
    invoke-static {v7, v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Void;

    move-object v1, v7

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v1
.end method

.method private synthetic lambda$handleDragDrop$345(IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;
    .locals 14

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move/from16 v5, p5

    .local v5, "recommendedDropAction":I
    move-object/from16 v6, p6

    .local v6, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    .line 673
    invoke-static {v12}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->actionToTransferMode(I)Ljavafx/scene/input/TransferMode;

    move-result-object v12

    move-object v13, v6

    .line 672
    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->handleDragDrop(IIIILjavafx/scene/input/TransferMode;Lcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0
.end method

.method private synthetic lambda$handleDragEnd$348(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 735
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move v1, p1

    .local v1, "performedAction":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->actionToTransferMode(I)Ljavafx/scene/input/TransferMode;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->handleDragEnd(Ljavafx/scene/input/TransferMode;Lcom/sun/glass/ui/ClipboardAssistance;)V

    .line 736
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0
.end method

.method private synthetic lambda$handleDragEnter$343(IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;
    .locals 14

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move/from16 v5, p5

    .local v5, "recommendedDropAction":I
    move-object/from16 v6, p6

    .local v6, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    .line 634
    invoke-static {v12}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->actionToTransferMode(I)Ljavafx/scene/input/TransferMode;

    move-result-object v12

    move-object v13, v6

    .line 633
    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->handleDragEnter(IIIILjavafx/scene/input/TransferMode;Lcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0
.end method

.method private synthetic lambda$handleDragLeave$344(Lcom/sun/glass/ui/ClipboardAssistance;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v1, p1

    .local v1, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->handleDragLeave(Lcom/sun/glass/ui/ClipboardAssistance;)V

    .line 652
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0
.end method

.method private synthetic lambda$handleDragOver$346(IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;
    .locals 14

    .prologue
    .line 695
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move/from16 v5, p5

    .local v5, "recommendedDropAction":I
    move-object/from16 v6, p6

    .local v6, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    .line 696
    invoke-static {v12}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->actionToTransferMode(I)Ljavafx/scene/input/TransferMode;

    move-result-object v12

    move-object v13, v6

    .line 695
    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->handleDragOver(IIIILjavafx/scene/input/TransferMode;Lcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0
.end method

.method private synthetic lambda$handleDragStart$347(IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 719
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move v1, p1

    .local v1, "button":I
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "xAbs":I
    move/from16 v5, p5

    .local v5, "yAbs":I
    move-object/from16 v6, p6

    .local v6, "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->handleDragStart(IIIIILcom/sun/glass/ui/ClipboardAssistance;)V

    .line 720
    const/4 v7, 0x0

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0
.end method

.method private synthetic lambda$handleEndTouchEvent$364()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 1177
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$22;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Ljava/security/PrivilegedAction;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 1182
    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v2

    .line 1177
    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0
.end method

.method private synthetic lambda$handleInputMethodEvent$342(Ljava/lang/String;I[I[I[BI)Ljava/lang/Void;
    .locals 14

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "commitCount":I
    move-object/from16 v3, p3

    .local v3, "clauseBoundary":[I
    move-object/from16 v4, p4

    .local v4, "attrBoundary":[I
    move-object/from16 v5, p5

    .local v5, "attrValue":[B
    move/from16 v6, p6

    .local v6, "cursorPos":I
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    invoke-static/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$29;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Ljava/lang/String;I[I[I[BI)Ljava/security/PrivilegedAction;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 557
    invoke-virtual {v8}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v8

    .line 546
    invoke-static {v7, v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Void;

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0
.end method

.method private synthetic lambda$handleKeyEvent$335()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->keyNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0
.end method

.method private synthetic lambda$handleMenuEvent$338(Lcom/sun/glass/ui/View;IIIIZ)Ljava/lang/Void;
    .locals 14

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "xAbs":I
    move/from16 v5, p5

    .local v5, "yAbs":I
    move/from16 v6, p6

    .local v6, "isKeyboardTrigger":Z
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-static/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$31;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/glass/ui/View;IIIIZ)Ljava/security/PrivilegedAction;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 414
    invoke-virtual {v8}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v8

    .line 405
    invoke-static {v7, v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Void;

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0
.end method

.method private synthetic lambda$handleMouseEvent$336()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->mouseNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0
.end method

.method private synthetic lambda$handleNextTouchEvent$362(ILcom/sun/glass/ui/View;JIIII)Ljava/lang/Void;
    .locals 19

    .prologue
    .line 1127
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move/from16 v1, p1

    .local v1, "type":I
    move-object/from16 v2, p2

    .local v2, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v3, p3

    .local v3, "touchId":J
    move/from16 v5, p5

    .local v5, "x":I
    move/from16 v6, p6

    .local v6, "y":I
    move/from16 v7, p7

    .local v7, "xAbs":I
    move/from16 v8, p8

    .local v8, "yAbs":I
    move-object v9, v0

    move v10, v1

    move-object v11, v2

    move-wide v12, v3

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-static/range {v9 .. v17}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$23;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;JIIII)Ljava/security/PrivilegedAction;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 1152
    invoke-virtual {v10}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v10

    .line 1127
    invoke-static {v9, v10}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Void;

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0
.end method

.method private synthetic lambda$handleRotateGestureEvent$356(ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/lang/Void;
    .locals 29

    .prologue
    .line 975
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move/from16 v2, p1

    .local v2, "type":I
    move-object/from16 v3, p2

    .local v3, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v4, p3

    .local v4, "dangle":D
    move-wide/from16 v6, p5

    .local v6, "totalangle":D
    move/from16 v8, p7

    .local v8, "originx":I
    move/from16 v9, p8

    .local v9, "originy":I
    move/from16 v10, p9

    .local v10, "originxAbs":I
    move/from16 v11, p10

    .local v11, "originyAbs":I
    move/from16 v12, p11

    .local v12, "modifiers":I
    move/from16 v13, p12

    .local v13, "isDirect":Z
    move/from16 v14, p13

    .local v14, "isInertia":Z
    move-object v15, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    invoke-static/range {v15 .. v28}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$26;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/security/PrivilegedAction;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v16, v0

    .line 1005
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v16

    .line 975
    invoke-static/range {v15 .. v16}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Void;

    move-object v1, v15

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v1
.end method

.method private synthetic lambda$handleScrollEvent$340(Lcom/sun/glass/ui/View;DDDDIIIIIIIII)Ljava/lang/Void;
    .locals 40

    .prologue
    .line 442
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object/from16 v2, p1

    .local v2, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v3, p2

    .local v3, "deltaX":D
    move-wide/from16 v5, p4

    .local v5, "deltaY":D
    move-wide/from16 v7, p6

    .local v7, "xMultiplier":D
    move-wide/from16 v9, p8

    .local v9, "yMultiplier":D
    move/from16 v11, p10

    .local v11, "chars":I
    move/from16 v12, p11

    .local v12, "lines":I
    move/from16 v13, p12

    .local v13, "defaultChars":I
    move/from16 v14, p13

    .local v14, "defaultLines":I
    move/from16 v15, p14

    .local v15, "x":I
    move/from16 v16, p15

    .local v16, "y":I
    move/from16 v17, p16

    .local v17, "xAbs":I
    move/from16 v18, p17

    .local v18, "yAbs":I
    move/from16 v19, p18

    .local v19, "modifiers":I
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    move-wide/from16 v26, v7

    move-wide/from16 v28, v9

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v32, v13

    move/from16 v33, v14

    move/from16 v34, v15

    move/from16 v35, v16

    move/from16 v36, v17

    move/from16 v37, v18

    move/from16 v38, v19

    invoke-static/range {v20 .. v38}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$30;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/glass/ui/View;DDDDIIIIIIIII)Ljava/security/PrivilegedAction;

    move-result-object v20

    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v21, v0

    .line 460
    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v21

    .line 442
    invoke-static/range {v20 .. v21}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Void;

    move-object/from16 v1, v20

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v1
.end method

.method private synthetic lambda$handleScrollGestureEvent$352(ILcom/sun/glass/ui/View;DDDDDDIIIIIIZZ)Ljava/lang/Void;
    .locals 47

    .prologue
    .line 853
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move/from16 v2, p1

    .local v2, "type":I
    move-object/from16 v3, p2

    .local v3, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v4, p3

    .local v4, "dx":D
    move-wide/from16 v6, p5

    .local v6, "dy":D
    move-wide/from16 v8, p7

    .local v8, "totaldx":D
    move-wide/from16 v10, p9

    .local v10, "totaldy":D
    move-wide/from16 v12, p11

    .local v12, "multiplierX":D
    move-wide/from16 v14, p13

    .local v14, "multiplierY":D
    move/from16 v16, p15

    .local v16, "touchCount":I
    move/from16 v17, p16

    .local v17, "x":I
    move/from16 v18, p17

    .local v18, "y":I
    move/from16 v19, p18

    .local v19, "xAbs":I
    move/from16 v20, p19

    .local v20, "yAbs":I
    move/from16 v21, p20

    .local v21, "modifiers":I
    move/from16 v22, p21

    .local v22, "isDirect":Z
    move/from16 v23, p22

    .local v23, "isInertia":Z
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object/from16 v26, v3

    move-wide/from16 v27, v4

    move-wide/from16 v29, v6

    move-wide/from16 v31, v8

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-wide/from16 v37, v14

    move/from16 v39, v16

    move/from16 v40, v17

    move/from16 v41, v18

    move/from16 v42, v19

    move/from16 v43, v20

    move/from16 v44, v21

    move/from16 v45, v22

    move/from16 v46, v23

    invoke-static/range {v24 .. v46}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$28;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDDDDDIIIIIIZZ)Ljava/security/PrivilegedAction;

    move-result-object v24

    move-object/from16 v25, v1

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v25, v0

    .line 887
    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v25

    .line 853
    invoke-static/range {v24 .. v25}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Void;

    move-object/from16 v1, v24

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v1
.end method

.method private synthetic lambda$handleSwipeGestureEvent$358(ILcom/sun/glass/ui/View;IIIIIIZ)Ljava/lang/Void;
    .locals 20

    .prologue
    .line 1032
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move/from16 v1, p1

    .local v1, "dir":I
    move-object/from16 v2, p2

    .local v2, "view":Lcom/sun/glass/ui/View;
    move/from16 v3, p3

    .local v3, "touchCount":I
    move/from16 v4, p4

    .local v4, "x":I
    move/from16 v5, p5

    .local v5, "y":I
    move/from16 v6, p6

    .local v6, "xAbs":I
    move/from16 v7, p7

    .local v7, "yAbs":I
    move/from16 v8, p8

    .local v8, "modifiers":I
    move/from16 v9, p9

    .local v9, "isDirect":Z
    move-object v10, v0

    move v11, v1

    move-object v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-static/range {v10 .. v19}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$25;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;IIIIIIZ)Ljava/security/PrivilegedAction;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 1065
    invoke-virtual {v11}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v11

    .line 1032
    invoke-static {v10, v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Void;

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0
.end method

.method private synthetic lambda$handleViewEvent$350()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 828
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->viewNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0
.end method

.method private synthetic lambda$handleZoomGestureEvent$354(ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/lang/Void;
    .locals 29

    .prologue
    .line 916
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move/from16 v2, p1

    .local v2, "type":I
    move-object/from16 v3, p2

    .local v3, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v4, p3

    .local v4, "scale":D
    move-wide/from16 v6, p5

    .local v6, "totalscale":D
    move/from16 v8, p7

    .local v8, "originx":I
    move/from16 v9, p8

    .local v9, "originy":I
    move/from16 v10, p9

    .local v10, "originxAbs":I
    move/from16 v11, p10

    .local v11, "originyAbs":I
    move/from16 v12, p11

    .local v12, "modifiers":I
    move/from16 v13, p12

    .local v13, "isDirect":Z
    move/from16 v14, p13

    .local v14, "isInertia":Z
    move-object v15, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    invoke-static/range {v15 .. v28}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$27;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/security/PrivilegedAction;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v16, v0

    .line 947
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v16

    .line 916
    invoke-static/range {v15 .. v16}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Void;

    move-object v1, v15

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v1
.end method

.method private synthetic lambda$null$337(Lcom/sun/glass/ui/View;IIIIZ)Ljava/lang/Void;
    .locals 24

    .prologue
    .line 406
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object/from16 v4, p1

    .local v4, "view":Lcom/sun/glass/ui/View;
    move/from16 v5, p2

    .local v5, "x":I
    move/from16 v6, p3

    .local v6, "y":I
    move/from16 v7, p4

    .local v7, "xAbs":I
    move/from16 v8, p5

    .local v8, "yAbs":I
    move/from16 v9, p6

    .local v9, "isKeyboardTrigger":Z
    move-object v13, v3

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v13, :cond_0

    .line 407
    move-object v13, v4

    invoke-virtual {v13}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v13

    move-object v10, v13

    .line 408
    .local v10, "w":Lcom/sun/glass/ui/Window;
    move-object v13, v10

    if-nez v13, :cond_1

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v11, v13

    .line 409
    .local v11, "pScale":D
    move-object v13, v3

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move v14, v5

    int-to-double v14, v14

    move-wide/from16 v16, v11

    div-double v14, v14, v16

    move/from16 v16, v6

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v11

    div-double v16, v16, v18

    move/from16 v18, v7

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v11

    div-double v18, v18, v20

    move/from16 v20, v8

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v11

    div-double v20, v20, v22

    move/from16 v22, v9

    invoke-interface/range {v13 .. v22}, Lcom/sun/javafx/tk/TKSceneListener;->menuEvent(DDDDZ)V

    .line 413
    .end local v10    # "w":Lcom/sun/glass/ui/Window;
    .end local v11    # "pScale":D
    :cond_0
    const/4 v13, 0x0

    move-object v3, v13

    .end local v3    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v3

    .line 408
    .restart local v3    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    .restart local v10    # "w":Lcom/sun/glass/ui/Window;
    :cond_1
    move-object v13, v10

    invoke-virtual {v13}, Lcom/sun/glass/ui/Window;->getPlatformScale()F

    move-result v13

    float-to-double v13, v13

    goto :goto_0
.end method

.method private synthetic lambda$null$339(Lcom/sun/glass/ui/View;DDDDIIIIIIIII)Ljava/lang/Void;
    .locals 58

    .prologue
    .line 443
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object/from16 v3, p1

    .local v3, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v4, p2

    .local v4, "deltaX":D
    move-wide/from16 v6, p4

    .local v6, "deltaY":D
    move-wide/from16 v8, p6

    .local v8, "xMultiplier":D
    move-wide/from16 v10, p8

    .local v10, "yMultiplier":D
    move/from16 v12, p10

    .local v12, "chars":I
    move/from16 v13, p11

    .local v13, "lines":I
    move/from16 v14, p12

    .local v14, "defaultChars":I
    move/from16 v15, p13

    .local v15, "defaultLines":I
    move/from16 v16, p14

    .local v16, "x":I
    move/from16 v17, p15

    .local v17, "y":I
    move/from16 v18, p16

    .local v18, "xAbs":I
    move/from16 v19, p17

    .local v19, "yAbs":I
    move/from16 v20, p18

    .local v20, "modifiers":I
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 444
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v24

    move-object/from16 v21, v24

    .line 445
    .local v21, "w":Lcom/sun/glass/ui/Window;
    move-object/from16 v24, v21

    if-nez v24, :cond_1

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide/from16 v22, v24

    .line 446
    .local v22, "pScale":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object/from16 v24, v0

    sget-object v25, Ljavafx/scene/input/ScrollEvent;->SCROLL:Ljavafx/event/EventType;

    move-wide/from16 v26, v4

    move-wide/from16 v28, v22

    div-double v26, v26, v28

    move-wide/from16 v28, v6

    move-wide/from16 v30, v22

    div-double v28, v28, v30

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    move-wide/from16 v34, v8

    move-wide/from16 v36, v10

    const/16 v38, 0x0

    move/from16 v39, v12

    move/from16 v40, v13

    move/from16 v41, v14

    move/from16 v42, v15

    move/from16 v43, v16

    move/from16 v0, v43

    int-to-double v0, v0

    move-wide/from16 v43, v0

    move-wide/from16 v45, v22

    div-double v43, v43, v45

    move/from16 v45, v17

    move/from16 v0, v45

    int-to-double v0, v0

    move-wide/from16 v45, v0

    move-wide/from16 v47, v22

    div-double v45, v45, v47

    move/from16 v47, v18

    move/from16 v0, v47

    int-to-double v0, v0

    move-wide/from16 v47, v0

    move-wide/from16 v49, v22

    div-double v47, v47, v49

    move/from16 v49, v19

    move/from16 v0, v49

    int-to-double v0, v0

    move-wide/from16 v49, v0

    move-wide/from16 v51, v22

    div-double v49, v49, v51

    move/from16 v51, v20

    const/16 v52, 0x1

    and-int/lit8 v51, v51, 0x1

    if-eqz v51, :cond_2

    const/16 v51, 0x1

    :goto_1
    move/from16 v52, v20

    const/16 v53, 0x4

    and-int/lit8 v52, v52, 0x4

    if-eqz v52, :cond_3

    const/16 v52, 0x1

    :goto_2
    move/from16 v53, v20

    const/16 v54, 0x8

    and-int/lit8 v53, v53, 0x8

    if-eqz v53, :cond_4

    const/16 v53, 0x1

    :goto_3
    move/from16 v54, v20

    const/16 v55, 0x10

    and-int/lit8 v54, v54, 0x10

    if-eqz v54, :cond_5

    const/16 v54, 0x1

    :goto_4
    const/16 v55, 0x0

    const/16 v56, 0x0

    invoke-interface/range {v24 .. v56}, Lcom/sun/javafx/tk/TKSceneListener;->scrollEvent(Ljavafx/event/EventType;DDDDDDIIIIIDDDDZZZZZZ)V

    .line 459
    .end local v21    # "w":Lcom/sun/glass/ui/Window;
    .end local v22    # "pScale":D
    :cond_0
    const/16 v24, 0x0

    move-object/from16 v2, v24

    .end local v2    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v2

    .line 445
    .restart local v2    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    .restart local v21    # "w":Lcom/sun/glass/ui/Window;
    :cond_1
    move-object/from16 v24, v21

    invoke-virtual/range {v24 .. v24}, Lcom/sun/glass/ui/Window;->getPlatformScale()F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    goto/16 :goto_0

    .line 446
    .restart local v22    # "pScale":D
    :cond_2
    const/16 v51, 0x0

    goto :goto_1

    :cond_3
    const/16 v52, 0x0

    goto :goto_2

    :cond_4
    const/16 v53, 0x0

    goto :goto_3

    :cond_5
    const/16 v54, 0x0

    goto :goto_4
.end method

.method private synthetic lambda$null$341(Ljava/lang/String;I[I[I[BI)Ljava/lang/Void;
    .locals 16

    .prologue
    .line 547
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object/from16 v1, p1

    .local v1, "text":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "commitCount":I
    move-object/from16 v3, p3

    .local v3, "clauseBoundary":[I
    move-object/from16 v4, p4

    .local v4, "attrBoundary":[I
    move-object/from16 v5, p5

    .local v5, "attrValue":[B
    move/from16 v6, p6

    .local v6, "cursorPos":I
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v11, :cond_0

    .line 548
    move-object v11, v1

    if-eqz v11, :cond_1

    move-object v11, v1

    :goto_0
    move-object v7, v11

    .line 549
    .local v7, "t":Ljava/lang/String;
    sget-object v11, Ljavafx/scene/input/InputMethodEvent;->INPUT_METHOD_TEXT_CHANGED:Ljavafx/event/EventType;

    move-object v8, v11

    .line 551
    .local v8, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/InputMethodEvent;>;"
    move-object v11, v7

    move v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    invoke-static {v11, v12, v13, v14, v15}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->inputMethodEventComposed(Ljava/lang/String;I[I[I[B)Ljavafx/collections/ObservableList;

    move-result-object v11

    move-object v9, v11

    .line 553
    .local v9, "composed":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/input/InputMethodTextRun;>;"
    move-object v11, v7

    const/4 v12, 0x0

    move v13, v2

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 554
    .local v10, "committed":Ljava/lang/String;
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object v12, v8

    move-object v13, v9

    move-object v14, v10

    move v15, v6

    invoke-interface {v11, v12, v13, v14, v15}, Lcom/sun/javafx/tk/TKSceneListener;->inputMethodEvent(Ljavafx/event/EventType;Ljavafx/collections/ObservableList;Ljava/lang/String;I)V

    .line 556
    .end local v7    # "t":Ljava/lang/String;
    .end local v8    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/InputMethodEvent;>;"
    .end local v9    # "composed":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/input/InputMethodTextRun;>;"
    .end local v10    # "committed":Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    move-object v0, v11

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0

    .line 548
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    :cond_1
    const-string v11, ""

    goto :goto_0
.end method

.method private synthetic lambda$null$351(ILcom/sun/glass/ui/View;DDDDDDIIIIIIZZ)Ljava/lang/Void;
    .locals 65

    .prologue
    .line 854
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move/from16 v4, p1

    .local v4, "type":I
    move-object/from16 v5, p2

    .local v5, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v6, p3

    .local v6, "dx":D
    move-wide/from16 v8, p5

    .local v8, "dy":D
    move-wide/from16 v10, p7

    .local v10, "totaldx":D
    move-wide/from16 v12, p9

    .local v12, "totaldy":D
    move-wide/from16 v14, p11

    .local v14, "multiplierX":D
    move-wide/from16 v16, p13

    .local v16, "multiplierY":D
    move/from16 v18, p15

    .local v18, "touchCount":I
    move/from16 v19, p16

    .local v19, "x":I
    move/from16 v20, p17

    .local v20, "y":I
    move/from16 v21, p18

    .local v21, "xAbs":I
    move/from16 v22, p19

    .local v22, "yAbs":I
    move/from16 v23, p20

    .local v23, "modifiers":I
    move/from16 v24, p21

    .local v24, "isDirect":Z
    move/from16 v25, p22

    .local v25, "isInertia":Z
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    .line 856
    move/from16 v30, v4

    packed-switch v30, :pswitch_data_0

    .line 867
    new-instance v30, Ljava/lang/RuntimeException;

    move-object/from16 v63, v30

    move-object/from16 v30, v63

    move-object/from16 v31, v63

    new-instance v32, Ljava/lang/StringBuilder;

    move-object/from16 v63, v32

    move-object/from16 v32, v63

    move-object/from16 v33, v63

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Unknown scroll event type: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move/from16 v33, v4

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 858
    :pswitch_0
    sget-object v30, Ljavafx/scene/input/ScrollEvent;->SCROLL_STARTED:Ljavafx/event/EventType;

    move-object/from16 v26, v30

    .line 869
    .local v26, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ScrollEvent;>;"
    :goto_0
    move-object/from16 v30, v5

    invoke-virtual/range {v30 .. v30}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v30

    move-object/from16 v27, v30

    .line 870
    .local v27, "w":Lcom/sun/glass/ui/Window;
    move-object/from16 v30, v27

    if-nez v30, :cond_1

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    :goto_1
    move-wide/from16 v28, v30

    .line 871
    .local v28, "pScale":D
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object/from16 v30, v0

    move-object/from16 v31, v26

    move-wide/from16 v32, v6

    move-wide/from16 v34, v28

    div-double v32, v32, v34

    move-wide/from16 v34, v8

    move-wide/from16 v36, v28

    div-double v34, v34, v36

    move-wide/from16 v36, v10

    move-wide/from16 v38, v28

    div-double v36, v36, v38

    move-wide/from16 v38, v12

    move-wide/from16 v40, v28

    div-double v38, v38, v40

    move-wide/from16 v40, v14

    move-wide/from16 v42, v16

    move/from16 v44, v18

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move/from16 v49, v19

    const v50, 0x7fffffff

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_2

    const-wide/high16 v49, 0x7ff8000000000000L    # NaN

    :goto_2
    move/from16 v51, v20

    const v52, 0x7fffffff

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_3

    const-wide/high16 v51, 0x7ff8000000000000L    # NaN

    :goto_3
    move/from16 v53, v21

    const v54, 0x7fffffff

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_4

    const-wide/high16 v53, 0x7ff8000000000000L    # NaN

    :goto_4
    move/from16 v55, v22

    const v56, 0x7fffffff

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_5

    const-wide/high16 v55, 0x7ff8000000000000L    # NaN

    :goto_5
    move/from16 v57, v23

    const/16 v58, 0x1

    and-int/lit8 v57, v57, 0x1

    if-eqz v57, :cond_6

    const/16 v57, 0x1

    :goto_6
    move/from16 v58, v23

    const/16 v59, 0x4

    and-int/lit8 v58, v58, 0x4

    if-eqz v58, :cond_7

    const/16 v58, 0x1

    :goto_7
    move/from16 v59, v23

    const/16 v60, 0x8

    and-int/lit8 v59, v59, 0x8

    if-eqz v59, :cond_8

    const/16 v59, 0x1

    :goto_8
    move/from16 v60, v23

    const/16 v61, 0x10

    and-int/lit8 v60, v60, 0x10

    if-eqz v60, :cond_9

    const/16 v60, 0x1

    :goto_9
    move/from16 v61, v24

    move/from16 v62, v25

    invoke-interface/range {v30 .. v62}, Lcom/sun/javafx/tk/TKSceneListener;->scrollEvent(Ljavafx/event/EventType;DDDDDDIIIIIDDDDZZZZZZ)V

    .line 886
    .end local v26    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ScrollEvent;>;"
    .end local v27    # "w":Lcom/sun/glass/ui/Window;
    .end local v28    # "pScale":D
    :cond_0
    const/16 v30, 0x0

    move-object/from16 v3, v30

    .end local v3    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v3

    .line 861
    .restart local v3    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    :pswitch_1
    sget-object v30, Ljavafx/scene/input/ScrollEvent;->SCROLL:Ljavafx/event/EventType;

    move-object/from16 v26, v30

    .line 862
    .restart local v26    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ScrollEvent;>;"
    goto/16 :goto_0

    .line 864
    .end local v26    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ScrollEvent;>;"
    :pswitch_2
    sget-object v30, Ljavafx/scene/input/ScrollEvent;->SCROLL_FINISHED:Ljavafx/event/EventType;

    move-object/from16 v26, v30

    .line 865
    .restart local v26    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ScrollEvent;>;"
    goto/16 :goto_0

    .line 870
    .restart local v27    # "w":Lcom/sun/glass/ui/Window;
    :cond_1
    move-object/from16 v30, v27

    invoke-virtual/range {v30 .. v30}, Lcom/sun/glass/ui/Window;->getPlatformScale()F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    goto/16 :goto_1

    .line 871
    .restart local v28    # "pScale":D
    :cond_2
    move/from16 v49, v19

    move/from16 v0, v49

    int-to-double v0, v0

    move-wide/from16 v49, v0

    move-wide/from16 v51, v28

    div-double v49, v49, v51

    goto :goto_2

    :cond_3
    move/from16 v51, v20

    move/from16 v0, v51

    int-to-double v0, v0

    move-wide/from16 v51, v0

    move-wide/from16 v53, v28

    div-double v51, v51, v53

    goto :goto_3

    :cond_4
    move/from16 v53, v21

    move/from16 v0, v53

    int-to-double v0, v0

    move-wide/from16 v53, v0

    move-wide/from16 v55, v28

    div-double v53, v53, v55

    goto :goto_4

    :cond_5
    move/from16 v55, v22

    move/from16 v0, v55

    int-to-double v0, v0

    move-wide/from16 v55, v0

    move-wide/from16 v57, v28

    div-double v55, v55, v57

    goto :goto_5

    :cond_6
    const/16 v57, 0x0

    goto :goto_6

    :cond_7
    const/16 v58, 0x0

    goto :goto_7

    :cond_8
    const/16 v59, 0x0

    goto :goto_8

    :cond_9
    const/16 v60, 0x0

    goto :goto_9

    .line 856
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private synthetic lambda$null$353(ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/lang/Void;
    .locals 41

    .prologue
    .line 917
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move/from16 v3, p1

    .local v3, "type":I
    move-object/from16 v4, p2

    .local v4, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v5, p3

    .local v5, "scale":D
    move-wide/from16 v7, p5

    .local v7, "totalscale":D
    move/from16 v9, p7

    .local v9, "originx":I
    move/from16 v10, p8

    .local v10, "originy":I
    move/from16 v11, p9

    .local v11, "originxAbs":I
    move/from16 v12, p10

    .local v12, "originyAbs":I
    move/from16 v13, p11

    .local v13, "modifiers":I
    move/from16 v14, p12

    .local v14, "isDirect":Z
    move/from16 v15, p13

    .local v15, "isInertia":Z
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 919
    move/from16 v20, v3

    packed-switch v20, :pswitch_data_0

    .line 930
    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v40, v20

    move-object/from16 v20, v40

    move-object/from16 v21, v40

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v40, v22

    move-object/from16 v22, v40

    move-object/from16 v23, v40

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unknown scroll event type: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move/from16 v23, v3

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 921
    :pswitch_0
    sget-object v20, Ljavafx/scene/input/ZoomEvent;->ZOOM_STARTED:Ljavafx/event/EventType;

    move-object/from16 v16, v20

    .line 932
    .local v16, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ZoomEvent;>;"
    :goto_0
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v20

    move-object/from16 v17, v20

    .line 933
    .local v17, "w":Lcom/sun/glass/ui/Window;
    move-object/from16 v20, v17

    if-nez v20, :cond_1

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    :goto_1
    move-wide/from16 v18, v20

    .line 935
    .local v18, "pScale":D
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object/from16 v20, v0

    move-object/from16 v21, v16

    move-wide/from16 v22, v5

    move-wide/from16 v24, v7

    move/from16 v26, v9

    const v27, 0x7fffffff

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    const-wide/high16 v26, 0x7ff8000000000000L    # NaN

    :goto_2
    move/from16 v28, v10

    const v29, 0x7fffffff

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    const-wide/high16 v28, 0x7ff8000000000000L    # NaN

    :goto_3
    move/from16 v30, v11

    const v31, 0x7fffffff

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    const-wide/high16 v30, 0x7ff8000000000000L    # NaN

    :goto_4
    move/from16 v32, v12

    const v33, 0x7fffffff

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    const-wide/high16 v32, 0x7ff8000000000000L    # NaN

    :goto_5
    move/from16 v34, v13

    const/16 v35, 0x1

    and-int/lit8 v34, v34, 0x1

    if-eqz v34, :cond_6

    const/16 v34, 0x1

    :goto_6
    move/from16 v35, v13

    const/16 v36, 0x4

    and-int/lit8 v35, v35, 0x4

    if-eqz v35, :cond_7

    const/16 v35, 0x1

    :goto_7
    move/from16 v36, v13

    const/16 v37, 0x8

    and-int/lit8 v36, v36, 0x8

    if-eqz v36, :cond_8

    const/16 v36, 0x1

    :goto_8
    move/from16 v37, v13

    const/16 v38, 0x10

    and-int/lit8 v37, v37, 0x10

    if-eqz v37, :cond_9

    const/16 v37, 0x1

    :goto_9
    move/from16 v38, v14

    move/from16 v39, v15

    invoke-interface/range {v20 .. v39}, Lcom/sun/javafx/tk/TKSceneListener;->zoomEvent(Ljavafx/event/EventType;DDDDDDZZZZZZ)V

    .line 946
    .end local v16    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ZoomEvent;>;"
    .end local v17    # "w":Lcom/sun/glass/ui/Window;
    .end local v18    # "pScale":D
    :cond_0
    const/16 v20, 0x0

    move-object/from16 v2, v20

    .end local v2    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v2

    .line 924
    .restart local v2    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    :pswitch_1
    sget-object v20, Ljavafx/scene/input/ZoomEvent;->ZOOM:Ljavafx/event/EventType;

    move-object/from16 v16, v20

    .line 925
    .restart local v16    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ZoomEvent;>;"
    goto/16 :goto_0

    .line 927
    .end local v16    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ZoomEvent;>;"
    :pswitch_2
    sget-object v20, Ljavafx/scene/input/ZoomEvent;->ZOOM_FINISHED:Ljavafx/event/EventType;

    move-object/from16 v16, v20

    .line 928
    .restart local v16    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ZoomEvent;>;"
    goto/16 :goto_0

    .line 933
    .restart local v17    # "w":Lcom/sun/glass/ui/Window;
    :cond_1
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Lcom/sun/glass/ui/Window;->getPlatformScale()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    goto/16 :goto_1

    .line 935
    .restart local v18    # "pScale":D
    :cond_2
    move/from16 v26, v9

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v18

    div-double v26, v26, v28

    goto :goto_2

    :cond_3
    move/from16 v28, v10

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v18

    div-double v28, v28, v30

    goto :goto_3

    :cond_4
    move/from16 v30, v11

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v18

    div-double v30, v30, v32

    goto :goto_4

    :cond_5
    move/from16 v32, v12

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v34, v18

    div-double v32, v32, v34

    goto :goto_5

    :cond_6
    const/16 v34, 0x0

    goto :goto_6

    :cond_7
    const/16 v35, 0x0

    goto :goto_7

    :cond_8
    const/16 v36, 0x0

    goto :goto_8

    :cond_9
    const/16 v37, 0x0

    goto :goto_9

    .line 919
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private synthetic lambda$null$355(ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/lang/Void;
    .locals 41

    .prologue
    .line 976
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move/from16 v3, p1

    .local v3, "type":I
    move-object/from16 v4, p2

    .local v4, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v5, p3

    .local v5, "dangle":D
    move-wide/from16 v7, p5

    .local v7, "totalangle":D
    move/from16 v9, p7

    .local v9, "originx":I
    move/from16 v10, p8

    .local v10, "originy":I
    move/from16 v11, p9

    .local v11, "originxAbs":I
    move/from16 v12, p10

    .local v12, "originyAbs":I
    move/from16 v13, p11

    .local v13, "modifiers":I
    move/from16 v14, p12

    .local v14, "isDirect":Z
    move/from16 v15, p13

    .local v15, "isInertia":Z
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 978
    move/from16 v20, v3

    packed-switch v20, :pswitch_data_0

    .line 989
    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v40, v20

    move-object/from16 v20, v40

    move-object/from16 v21, v40

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v40, v22

    move-object/from16 v22, v40

    move-object/from16 v23, v40

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unknown scroll event type: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move/from16 v23, v3

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 980
    :pswitch_0
    sget-object v20, Ljavafx/scene/input/RotateEvent;->ROTATION_STARTED:Ljavafx/event/EventType;

    move-object/from16 v16, v20

    .line 991
    .local v16, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/RotateEvent;>;"
    :goto_0
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v20

    move-object/from16 v17, v20

    .line 992
    .local v17, "w":Lcom/sun/glass/ui/Window;
    move-object/from16 v20, v17

    if-nez v20, :cond_1

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    :goto_1
    move-wide/from16 v18, v20

    .line 993
    .local v18, "pScale":D
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object/from16 v20, v0

    move-object/from16 v21, v16

    move-wide/from16 v22, v5

    move-wide/from16 v24, v7

    move/from16 v26, v9

    const v27, 0x7fffffff

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    const-wide/high16 v26, 0x7ff8000000000000L    # NaN

    :goto_2
    move/from16 v28, v10

    const v29, 0x7fffffff

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    const-wide/high16 v28, 0x7ff8000000000000L    # NaN

    :goto_3
    move/from16 v30, v11

    const v31, 0x7fffffff

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    const-wide/high16 v30, 0x7ff8000000000000L    # NaN

    :goto_4
    move/from16 v32, v12

    const v33, 0x7fffffff

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    const-wide/high16 v32, 0x7ff8000000000000L    # NaN

    :goto_5
    move/from16 v34, v13

    const/16 v35, 0x1

    and-int/lit8 v34, v34, 0x1

    if-eqz v34, :cond_6

    const/16 v34, 0x1

    :goto_6
    move/from16 v35, v13

    const/16 v36, 0x4

    and-int/lit8 v35, v35, 0x4

    if-eqz v35, :cond_7

    const/16 v35, 0x1

    :goto_7
    move/from16 v36, v13

    const/16 v37, 0x8

    and-int/lit8 v36, v36, 0x8

    if-eqz v36, :cond_8

    const/16 v36, 0x1

    :goto_8
    move/from16 v37, v13

    const/16 v38, 0x10

    and-int/lit8 v37, v37, 0x10

    if-eqz v37, :cond_9

    const/16 v37, 0x1

    :goto_9
    move/from16 v38, v14

    move/from16 v39, v15

    invoke-interface/range {v20 .. v39}, Lcom/sun/javafx/tk/TKSceneListener;->rotateEvent(Ljavafx/event/EventType;DDDDDDZZZZZZ)V

    .line 1004
    .end local v16    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/RotateEvent;>;"
    .end local v17    # "w":Lcom/sun/glass/ui/Window;
    .end local v18    # "pScale":D
    :cond_0
    const/16 v20, 0x0

    move-object/from16 v2, v20

    .end local v2    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v2

    .line 983
    .restart local v2    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    :pswitch_1
    sget-object v20, Ljavafx/scene/input/RotateEvent;->ROTATE:Ljavafx/event/EventType;

    move-object/from16 v16, v20

    .line 984
    .restart local v16    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/RotateEvent;>;"
    goto/16 :goto_0

    .line 986
    .end local v16    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/RotateEvent;>;"
    :pswitch_2
    sget-object v20, Ljavafx/scene/input/RotateEvent;->ROTATION_FINISHED:Ljavafx/event/EventType;

    move-object/from16 v16, v20

    .line 987
    .restart local v16    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/RotateEvent;>;"
    goto/16 :goto_0

    .line 992
    .restart local v17    # "w":Lcom/sun/glass/ui/Window;
    :cond_1
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Lcom/sun/glass/ui/Window;->getPlatformScale()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    goto/16 :goto_1

    .line 993
    .restart local v18    # "pScale":D
    :cond_2
    move/from16 v26, v9

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v18

    div-double v26, v26, v28

    goto :goto_2

    :cond_3
    move/from16 v28, v10

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v18

    div-double v28, v28, v30

    goto :goto_3

    :cond_4
    move/from16 v30, v11

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v18

    div-double v30, v30, v32

    goto :goto_4

    :cond_5
    move/from16 v32, v12

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v34, v18

    div-double v32, v32, v34

    goto :goto_5

    :cond_6
    const/16 v34, 0x0

    goto :goto_6

    :cond_7
    const/16 v35, 0x0

    goto :goto_7

    :cond_8
    const/16 v36, 0x0

    goto :goto_8

    :cond_9
    const/16 v37, 0x0

    goto :goto_9

    .line 978
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private synthetic lambda$null$357(ILcom/sun/glass/ui/View;IIIIIIZ)Ljava/lang/Void;
    .locals 34

    .prologue
    .line 1033
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move/from16 v4, p1

    .local v4, "dir":I
    move-object/from16 v5, p2

    .local v5, "view":Lcom/sun/glass/ui/View;
    move/from16 v6, p3

    .local v6, "touchCount":I
    move/from16 v7, p4

    .local v7, "x":I
    move/from16 v8, p5

    .local v8, "y":I
    move/from16 v9, p6

    .local v9, "xAbs":I
    move/from16 v10, p7

    .local v10, "yAbs":I
    move/from16 v11, p8

    .local v11, "modifiers":I
    move/from16 v12, p9

    .local v12, "isDirect":Z
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1035
    move/from16 v17, v4

    packed-switch v17, :pswitch_data_0

    .line 1049
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v33, v17

    move-object/from16 v17, v33

    move-object/from16 v18, v33

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v33, v19

    move-object/from16 v19, v33

    move-object/from16 v20, v33

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown swipe event direction: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1037
    :pswitch_0
    sget-object v17, Ljavafx/scene/input/SwipeEvent;->SWIPE_UP:Ljavafx/event/EventType;

    move-object/from16 v13, v17

    .line 1051
    .local v13, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/SwipeEvent;>;"
    :goto_0
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v17

    move-object/from16 v14, v17

    .line 1052
    .local v14, "w":Lcom/sun/glass/ui/Window;
    move-object/from16 v17, v14

    if-nez v17, :cond_1

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    :goto_1
    move-wide/from16 v15, v17

    .line 1053
    .local v15, "pScale":D
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    move/from16 v19, v6

    move/from16 v20, v7

    const v21, 0x7fffffff

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    const-wide/high16 v20, 0x7ff8000000000000L    # NaN

    :goto_2
    move/from16 v22, v8

    const v23, 0x7fffffff

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    const-wide/high16 v22, 0x7ff8000000000000L    # NaN

    :goto_3
    move/from16 v24, v9

    const v25, 0x7fffffff

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    const-wide/high16 v24, 0x7ff8000000000000L    # NaN

    :goto_4
    move/from16 v26, v10

    const v27, 0x7fffffff

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    const-wide/high16 v26, 0x7ff8000000000000L    # NaN

    :goto_5
    move/from16 v28, v11

    const/16 v29, 0x1

    and-int/lit8 v28, v28, 0x1

    if-eqz v28, :cond_6

    const/16 v28, 0x1

    :goto_6
    move/from16 v29, v11

    const/16 v30, 0x4

    and-int/lit8 v29, v29, 0x4

    if-eqz v29, :cond_7

    const/16 v29, 0x1

    :goto_7
    move/from16 v30, v11

    const/16 v31, 0x8

    and-int/lit8 v30, v30, 0x8

    if-eqz v30, :cond_8

    const/16 v30, 0x1

    :goto_8
    move/from16 v31, v11

    const/16 v32, 0x10

    and-int/lit8 v31, v31, 0x10

    if-eqz v31, :cond_9

    const/16 v31, 0x1

    :goto_9
    move/from16 v32, v12

    invoke-interface/range {v17 .. v32}, Lcom/sun/javafx/tk/TKSceneListener;->swipeEvent(Ljavafx/event/EventType;IDDDDZZZZZ)V

    .line 1064
    .end local v13    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/SwipeEvent;>;"
    .end local v14    # "w":Lcom/sun/glass/ui/Window;
    .end local v15    # "pScale":D
    :cond_0
    const/16 v17, 0x0

    move-object/from16 v3, v17

    .end local v3    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v3

    .line 1040
    .restart local v3    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    :pswitch_1
    sget-object v17, Ljavafx/scene/input/SwipeEvent;->SWIPE_DOWN:Ljavafx/event/EventType;

    move-object/from16 v13, v17

    .line 1041
    .restart local v13    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/SwipeEvent;>;"
    goto/16 :goto_0

    .line 1043
    .end local v13    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/SwipeEvent;>;"
    :pswitch_2
    sget-object v17, Ljavafx/scene/input/SwipeEvent;->SWIPE_LEFT:Ljavafx/event/EventType;

    move-object/from16 v13, v17

    .line 1044
    .restart local v13    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/SwipeEvent;>;"
    goto/16 :goto_0

    .line 1046
    .end local v13    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/SwipeEvent;>;"
    :pswitch_3
    sget-object v17, Ljavafx/scene/input/SwipeEvent;->SWIPE_RIGHT:Ljavafx/event/EventType;

    move-object/from16 v13, v17

    .line 1047
    .restart local v13    # "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/SwipeEvent;>;"
    goto/16 :goto_0

    .line 1052
    .restart local v14    # "w":Lcom/sun/glass/ui/Window;
    :cond_1
    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Lcom/sun/glass/ui/Window;->getPlatformScale()F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    goto/16 :goto_1

    .line 1053
    .restart local v15    # "pScale":D
    :cond_2
    move/from16 v20, v7

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v15

    div-double v20, v20, v22

    goto/16 :goto_2

    :cond_3
    move/from16 v22, v8

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v15

    div-double v22, v22, v24

    goto/16 :goto_3

    :cond_4
    move/from16 v24, v9

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v15

    div-double v24, v24, v26

    goto/16 :goto_4

    :cond_5
    move/from16 v26, v10

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v15

    div-double v26, v26, v28

    goto/16 :goto_5

    :cond_6
    const/16 v28, 0x0

    goto :goto_6

    :cond_7
    const/16 v29, 0x0

    goto :goto_7

    :cond_8
    const/16 v30, 0x0

    goto :goto_8

    :cond_9
    const/16 v31, 0x0

    goto :goto_9

    .line 1035
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private synthetic lambda$null$359(JIZI)Ljava/lang/Void;
    .locals 17

    .prologue
    .line 1091
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-wide/from16 v2, p1

    .local v2, "time":J
    move/from16 v4, p3

    .local v4, "touchEventCount":I
    move/from16 v5, p4

    .local v5, "isDirect":Z
    move/from16 v6, p5

    .local v6, "modifiers":I
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v7, :cond_0

    .line 1092
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-wide v8, v2

    move v10, v4

    move v11, v5

    move v12, v6

    const/4 v13, 0x1

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    :goto_0
    move v13, v6

    const/4 v14, 0x4

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    :goto_1
    move v14, v6

    const/16 v15, 0x8

    and-int/lit8 v14, v14, 0x8

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    :goto_2
    move v15, v6

    const/16 v16, 0x10

    and-int/lit8 v15, v15, 0x10

    if-eqz v15, :cond_4

    const/4 v15, 0x1

    :goto_3
    invoke-interface/range {v7 .. v15}, Lcom/sun/javafx/tk/TKSceneListener;->touchEventBegin(JIZZZZZ)V

    .line 1099
    :cond_0
    const/4 v7, 0x0

    move-object v1, v7

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v1

    .line 1092
    .restart local v1    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    goto :goto_3
.end method

.method private synthetic lambda$null$361(ILcom/sun/glass/ui/View;JIIII)Ljava/lang/Void;
    .locals 31

    .prologue
    .line 1128
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move/from16 v4, p1

    .local v4, "type":I
    move-object/from16 v5, p2

    .local v5, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v6, p3

    .local v6, "touchId":J
    move/from16 v8, p5

    .local v8, "x":I
    move/from16 v9, p6

    .local v9, "y":I
    move/from16 v10, p7

    .local v10, "xAbs":I
    move/from16 v11, p8

    .local v11, "yAbs":I
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 1130
    move/from16 v16, v4

    packed-switch v16, :pswitch_data_0

    .line 1144
    new-instance v16, Ljava/lang/RuntimeException;

    move-object/from16 v30, v16

    move-object/from16 v16, v30

    move-object/from16 v17, v30

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v30, v18

    move-object/from16 v18, v30

    move-object/from16 v19, v30

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown touch state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1132
    :pswitch_0
    sget-object v16, Ljavafx/scene/input/TouchPoint$State;->PRESSED:Ljavafx/scene/input/TouchPoint$State;

    move-object/from16 v12, v16

    .line 1146
    .local v12, "state":Ljavafx/scene/input/TouchPoint$State;
    :goto_0
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v16

    move-object/from16 v13, v16

    .line 1147
    .local v13, "w":Lcom/sun/glass/ui/Window;
    move-object/from16 v16, v13

    if-nez v16, :cond_1

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    :goto_1
    move-wide/from16 v14, v16

    .line 1148
    .local v14, "pScale":D
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move-wide/from16 v18, v6

    move/from16 v20, v8

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v14

    div-double v20, v20, v22

    move/from16 v22, v9

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v14

    div-double v22, v22, v24

    move/from16 v24, v10

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v14

    div-double v24, v24, v26

    move/from16 v26, v11

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v14

    div-double v26, v26, v28

    invoke-interface/range {v16 .. v27}, Lcom/sun/javafx/tk/TKSceneListener;->touchEventNext(Ljavafx/scene/input/TouchPoint$State;JDDDD)V

    .line 1151
    .end local v12    # "state":Ljavafx/scene/input/TouchPoint$State;
    .end local v13    # "w":Lcom/sun/glass/ui/Window;
    .end local v14    # "pScale":D
    :cond_0
    const/16 v16, 0x0

    move-object/from16 v3, v16

    .end local v3    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v3

    .line 1135
    .restart local v3    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    :pswitch_1
    sget-object v16, Ljavafx/scene/input/TouchPoint$State;->MOVED:Ljavafx/scene/input/TouchPoint$State;

    move-object/from16 v12, v16

    .line 1136
    .restart local v12    # "state":Ljavafx/scene/input/TouchPoint$State;
    goto :goto_0

    .line 1138
    .end local v12    # "state":Ljavafx/scene/input/TouchPoint$State;
    :pswitch_2
    sget-object v16, Ljavafx/scene/input/TouchPoint$State;->STATIONARY:Ljavafx/scene/input/TouchPoint$State;

    move-object/from16 v12, v16

    .line 1139
    .restart local v12    # "state":Ljavafx/scene/input/TouchPoint$State;
    goto :goto_0

    .line 1141
    .end local v12    # "state":Ljavafx/scene/input/TouchPoint$State;
    :pswitch_3
    sget-object v16, Ljavafx/scene/input/TouchPoint$State;->RELEASED:Ljavafx/scene/input/TouchPoint$State;

    move-object/from16 v12, v16

    .line 1142
    .restart local v12    # "state":Ljavafx/scene/input/TouchPoint$State;
    goto :goto_0

    .line 1147
    .restart local v13    # "w":Lcom/sun/glass/ui/Window;
    :cond_1
    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v16}, Lcom/sun/glass/ui/Window;->getPlatformScale()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    goto :goto_1

    .line 1130
    nop

    :pswitch_data_0
    .packed-switch 0x32b
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private synthetic lambda$null$363()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 1178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v1, :cond_0

    .line 1179
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKSceneListener;->touchEventEnd()V

    .line 1181
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0
.end method

.method private static synthetic lambda$static$334()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 71
    const-string v0, "com.sun.javafx.gestures.zoom"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->zoomGestureEnabled:Z

    .line 72
    const-string v0, "com.sun.javafx.gestures.rotate"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->rotateGestureEnabled:Z

    .line 73
    const-string v0, "com.sun.javafx.gestures.scroll"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scrollGestureEnabled:Z

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method private static mouseEventButton(I)Ljavafx/scene/input/MouseButton;
    .locals 2

    .prologue
    .line 259
    move v0, p0

    .local v0, "glassButton":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 267
    sget-object v1, Ljavafx/scene/input/MouseButton;->NONE:Ljavafx/scene/input/MouseButton;

    move-object v0, v1

    .end local v0    # "glassButton":I
    :goto_0
    return-object v0

    .line 261
    .restart local v0    # "glassButton":I
    :pswitch_0
    sget-object v1, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    move-object v0, v1

    goto :goto_0

    .line 263
    :pswitch_1
    sget-object v1, Ljavafx/scene/input/MouseButton;->SECONDARY:Ljavafx/scene/input/MouseButton;

    move-object v0, v1

    goto :goto_0

    .line 265
    :pswitch_2
    sget-object v1, Ljavafx/scene/input/MouseButton;->MIDDLE:Ljavafx/scene/input/MouseButton;

    move-object v0, v1

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0xd4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static mouseEventType(I)Ljavafx/event/EventType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    move v0, p0

    .local v0, "glassType":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 251
    :pswitch_0
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v1, :cond_0

    .line 252
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Glass mouse event type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "glassType":I
    :goto_0
    return-object v0

    .line 235
    .restart local v0    # "glassType":I
    :pswitch_1
    sget-object v1, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 237
    :pswitch_2
    sget-object v1, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 239
    :pswitch_3
    sget-object v1, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 241
    :pswitch_4
    sget-object v1, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 243
    :pswitch_5
    sget-object v1, Ljavafx/scene/input/MouseEvent;->MOUSE_MOVED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 245
    :pswitch_6
    sget-object v1, Ljavafx/scene/input/MouseEvent;->MOUSE_DRAGGED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 247
    :pswitch_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "WHEEL event cannot be translated to MouseEvent, must be translated to ScrollEvent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0xdd
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private static transferModeToAction(Ljavafx/scene/input/TransferMode;)I
    .locals 3

    .prologue
    .line 606
    move-object v0, p0

    .local v0, "tm":Ljavafx/scene/input/TransferMode;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 607
    const/4 v1, 0x0

    move v0, v1

    .line 618
    .end local v0    # "tm":Ljavafx/scene/input/TransferMode;
    :goto_0
    return v0

    .line 610
    .restart local v0    # "tm":Ljavafx/scene/input/TransferMode;
    :cond_0
    sget-object v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$2;->$SwitchMap$javafx$scene$input$TransferMode:[I

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/TransferMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 618
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 612
    :pswitch_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 614
    :pswitch_1
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 616
    :pswitch_2
    const/high16 v1, 0x40000000    # 2.0f

    move v0, v1

    goto :goto_0

    .line 610
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getInputMethodCandidatePos(I)[D
    .locals 8

    .prologue
    .line 571
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move v1, p1

    .local v1, "offset":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/ViewScene;->inputMethodRequests:Ljavafx/scene/input/InputMethodRequests;

    move v5, v1

    invoke-interface {v4, v5}, Ljavafx/scene/input/InputMethodRequests;->getTextLocation(I)Ljavafx/geometry/Point2D;

    move-result-object v4

    move-object v2, v4

    .line 572
    .local v2, "p2d":Ljavafx/geometry/Point2D;
    const/4 v4, 0x2

    new-array v4, v4, [D

    move-object v3, v4

    .line 573
    .local v3, "ret":[D
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 574
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 575
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return-object v0
.end method

.method public getSceneAccessible()Lcom/sun/glass/ui/Accessible;
    .locals 2

    .prologue
    .line 1198
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v1, :cond_0

    .line 1199
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKSceneListener;->getSceneAccessible()Lcom/sun/glass/ui/Accessible;

    move-result-object v1

    move-object v0, v1

    .line 1201
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public handleBeginTouchEvent(Lcom/sun/glass/ui/View;JIZI)V
    .locals 16

    .prologue
    .line 1081
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v2, p2

    .local v2, "time":J
    move/from16 v4, p4

    .local v4, "modifiers":I
    move/from16 v5, p5

    .local v5, "isDirect":Z
    move/from16 v6, p6

    .local v6, "touchEventCount":I
    sget-boolean v9, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v9, :cond_0

    .line 1082
    const-string v9, "BEGIN_TOUCH_EVENT"

    invoke-static {v9}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 1084
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v9

    move-object v7, v9

    .line 1086
    .local v7, "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v9, v7

    if-eqz v9, :cond_1

    .line 1087
    move-object v9, v7

    const/4 v10, 0x1

    :try_start_0
    invoke-virtual {v9, v10}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 1089
    :cond_1
    move-object v9, v0

    move-wide v10, v2

    move v12, v6

    move v13, v5

    move v14, v4

    invoke-static/range {v9 .. v14}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$19;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;JIZI)Ljava/util/function/Supplier;

    move-result-object v9

    invoke-static {v9}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1103
    move-object v9, v7

    if-eqz v9, :cond_2

    .line 1104
    move-object v9, v7

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 1106
    :cond_2
    sget-boolean v9, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v9, :cond_3

    .line 1107
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 1111
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->gestures:Lcom/sun/javafx/tk/quantum/GestureRecognizers;

    move-wide v10, v2

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-virtual/range {v9 .. v14}, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->notifyBeginTouchEvent(JIZI)V

    .line 1112
    return-void

    .line 1103
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v7

    if-eqz v9, :cond_4

    .line 1104
    move-object v9, v7

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 1106
    :cond_4
    sget-boolean v9, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v9, :cond_5

    .line 1107
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_5
    move-object v9, v8

    throw v9
.end method

.method public handleDragDrop(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)I
    .locals 17

    .prologue
    .line 666
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "xAbs":I
    move/from16 v5, p5

    .local v5, "yAbs":I
    move/from16 v6, p6

    .local v6, "recommendedDropAction":I
    move-object/from16 v7, p7

    .local v7, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    sget-boolean v10, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v10, :cond_0

    .line 667
    const-string v10, "DRAG_DROP"

    invoke-static {v10}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 671
    :cond_0
    move-object v10, v0

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move-object/from16 v16, v7

    :try_start_0
    invoke-static/range {v10 .. v16}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$10;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljava/util/function/Supplier;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/input/TransferMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v10

    .line 677
    .local v8, "action":Ljavafx/scene/input/TransferMode;
    sget-boolean v10, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v10, :cond_1

    .line 678
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 681
    :cond_1
    move-object v10, v8

    invoke-static {v10}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->transferModeToAction(Ljavafx/scene/input/TransferMode;)I

    move-result v10

    move v0, v10

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return v0

    .line 677
    .end local v8    # "action":Ljavafx/scene/input/TransferMode;
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    :catchall_0
    move-exception v10

    move-object v9, v10

    sget-boolean v10, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v10, :cond_2

    .line 678
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_2
    move-object v10, v9

    throw v10
.end method

.method public handleDragEnd(Lcom/sun/glass/ui/View;I)V
    .locals 6

    .prologue
    .line 730
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move v2, p2

    .local v2, "performedAction":I
    sget-boolean v4, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v4, :cond_0

    .line 731
    const-string v4, "DRAG_END"

    invoke-static {v4}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 734
    :cond_0
    move-object v4, v0

    move v5, v2

    :try_start_0
    invoke-static {v4, v5}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$13;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;I)Ljava/util/function/Supplier;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 739
    sget-boolean v4, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v4, :cond_1

    .line 740
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 743
    :cond_1
    return-void

    .line 739
    :catchall_0
    move-exception v4

    move-object v3, v4

    sget-boolean v4, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v4, :cond_2

    .line 740
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_2
    move-object v4, v3

    throw v4
.end method

.method public handleDragEnter(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)I
    .locals 17

    .prologue
    .line 627
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "xAbs":I
    move/from16 v5, p5

    .local v5, "yAbs":I
    move/from16 v6, p6

    .local v6, "recommendedDropAction":I
    move-object/from16 v7, p7

    .local v7, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    sget-boolean v10, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v10, :cond_0

    .line 628
    const-string v10, "DRAG_ENTER"

    invoke-static {v10}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 632
    :cond_0
    move-object v10, v0

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move-object/from16 v16, v7

    :try_start_0
    invoke-static/range {v10 .. v16}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljava/util/function/Supplier;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/input/TransferMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v10

    .line 638
    .local v8, "action":Ljavafx/scene/input/TransferMode;
    sget-boolean v10, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v10, :cond_1

    .line 639
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 642
    :cond_1
    move-object v10, v8

    invoke-static {v10}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->transferModeToAction(Ljavafx/scene/input/TransferMode;)I

    move-result v10

    move v0, v10

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return v0

    .line 638
    .end local v8    # "action":Ljavafx/scene/input/TransferMode;
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    :catchall_0
    move-exception v10

    move-object v9, v10

    sget-boolean v10, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v10, :cond_2

    .line 639
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_2
    move-object v10, v9

    throw v10
.end method

.method public handleDragLeave(Lcom/sun/glass/ui/View;Lcom/sun/glass/ui/ClipboardAssistance;)V
    .locals 6

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move-object v2, p2

    .local v2, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    sget-boolean v4, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v4, :cond_0

    .line 647
    const-string v4, "DRAG_LEAVE"

    invoke-static {v4}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 650
    :cond_0
    move-object v4, v0

    move-object v5, v2

    :try_start_0
    invoke-static {v4, v5}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/glass/ui/ClipboardAssistance;)Ljava/util/function/Supplier;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 655
    sget-boolean v4, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v4, :cond_1

    .line 656
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 659
    :cond_1
    return-void

    .line 655
    :catchall_0
    move-exception v4

    move-object v3, v4

    sget-boolean v4, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v4, :cond_2

    .line 656
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_2
    move-object v4, v3

    throw v4
.end method

.method public handleDragOver(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)I
    .locals 17

    .prologue
    .line 689
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "xAbs":I
    move/from16 v5, p5

    .local v5, "yAbs":I
    move/from16 v6, p6

    .local v6, "recommendedDropAction":I
    move-object/from16 v7, p7

    .local v7, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    sget-boolean v10, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v10, :cond_0

    .line 690
    const-string v10, "DRAG_OVER"

    invoke-static {v10}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 694
    :cond_0
    move-object v10, v0

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move-object/from16 v16, v7

    :try_start_0
    invoke-static/range {v10 .. v16}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljava/util/function/Supplier;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/input/TransferMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v10

    .line 700
    .local v8, "action":Ljavafx/scene/input/TransferMode;
    sget-boolean v10, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v10, :cond_1

    .line 701
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 704
    :cond_1
    move-object v10, v8

    invoke-static {v10}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->transferModeToAction(Ljavafx/scene/input/TransferMode;)I

    move-result v10

    move v0, v10

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    return v0

    .line 700
    .end local v8    # "action":Ljavafx/scene/input/TransferMode;
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    :catchall_0
    move-exception v10

    move-object v9, v10

    sget-boolean v10, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v10, :cond_2

    .line 701
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_2
    move-object v10, v9

    throw v10
.end method

.method public handleDragStart(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)V
    .locals 16

    .prologue
    .line 713
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move/from16 v2, p2

    .local v2, "button":I
    move/from16 v3, p3

    .local v3, "x":I
    move/from16 v4, p4

    .local v4, "y":I
    move/from16 v5, p5

    .local v5, "xAbs":I
    move/from16 v6, p6

    .local v6, "yAbs":I
    move-object/from16 v7, p7

    .local v7, "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    sget-boolean v9, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v9, :cond_0

    .line 714
    const-string v9, "DRAG_START"

    invoke-static {v9}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 716
    :cond_0
    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 718
    move-object v9, v0

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move-object v15, v7

    :try_start_0
    invoke-static/range {v9 .. v15}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$12;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljava/util/function/Supplier;

    move-result-object v9

    invoke-static {v9}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 723
    sget-boolean v9, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v9, :cond_1

    .line 724
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 727
    :cond_1
    return-void

    .line 723
    :catchall_0
    move-exception v9

    move-object v8, v9

    sget-boolean v9, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v9, :cond_2

    .line 724
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_2
    move-object v9, v8

    throw v9
.end method

.method public handleEndTouchEvent(Lcom/sun/glass/ui/View;J)V
    .locals 10

    .prologue
    .line 1168
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move-wide v2, p2

    .local v2, "time":J
    sget-boolean v6, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v6, :cond_0

    .line 1169
    const-string v6, "END_TOUCH_EVENT"

    invoke-static {v6}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 1171
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    invoke-virtual {v6}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v6

    move-object v4, v6

    .line 1173
    .local v4, "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 1174
    move-object v6, v4

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v6, v7}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 1176
    :cond_1
    move-object v6, v0

    invoke-static {v6}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$21;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Ljava/util/function/Supplier;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1185
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 1186
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 1188
    :cond_2
    sget-boolean v6, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v6, :cond_3

    .line 1189
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 1193
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->gestures:Lcom/sun/javafx/tk/quantum/GestureRecognizers;

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->notifyEndTouchEvent(J)V

    .line 1194
    return-void

    .line 1185
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    if-eqz v6, :cond_4

    .line 1186
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 1188
    :cond_4
    sget-boolean v6, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v6, :cond_5

    .line 1189
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_5
    move-object v6, v5

    throw v6
.end method

.method public handleInputMethodEvent(JLjava/lang/String;[I[I[BII)V
    .locals 19

    .prologue
    .line 537
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-wide/from16 v2, p1

    .local v2, "time":J
    move-object/from16 v4, p3

    .local v4, "text":Ljava/lang/String;
    move-object/from16 v5, p4

    .local v5, "clauseBoundary":[I
    move-object/from16 v6, p5

    .local v6, "attrBoundary":[I
    move-object/from16 v7, p6

    .local v7, "attrValue":[B
    move/from16 v8, p7

    .local v8, "commitCount":I
    move/from16 v9, p8

    .local v9, "cursorPos":I
    sget-boolean v12, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v12, :cond_0

    .line 538
    const-string v12, "INPUT_METHOD_EVENT"

    invoke-static {v12}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 540
    :cond_0
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v12

    move-object v10, v12

    .line 542
    .local v10, "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v12, v10

    if-eqz v12, :cond_1

    .line 543
    move-object v12, v10

    const/4 v13, 0x1

    :try_start_0
    invoke-virtual {v12, v13}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 545
    :cond_1
    move-object v12, v1

    move-object v13, v4

    move v14, v8

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v9

    invoke-static/range {v12 .. v18}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Ljava/lang/String;I[I[I[BI)Ljava/util/function/Supplier;

    move-result-object v12

    invoke-static {v12}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 560
    move-object v12, v10

    if-eqz v12, :cond_2

    .line 561
    move-object v12, v10

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 563
    :cond_2
    sget-boolean v12, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v12, :cond_3

    .line 564
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 567
    :cond_3
    return-void

    .line 560
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v10

    if-eqz v12, :cond_4

    .line 561
    move-object v12, v10

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 563
    :cond_4
    sget-boolean v12, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v12, :cond_5

    .line 564
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_5
    move-object v12, v11

    throw v12
.end method

.method public handleKeyEvent(Lcom/sun/glass/ui/View;JII[CI)V
    .locals 12

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move-wide v2, p2

    .local v2, "time":J
    move/from16 v4, p4

    .local v4, "type":I
    move/from16 v5, p5

    .local v5, "key":I
    move-object/from16 v6, p6

    .local v6, "chars":[C
    move/from16 v7, p7

    .local v7, "modifiers":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->keyNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;

    move-object v9, v1

    iput-object v9, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->view:Lcom/sun/glass/ui/View;

    .line 221
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->keyNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;

    move-wide v9, v2

    iput-wide v9, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->time:J

    .line 222
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->keyNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;

    move v9, v4

    iput v9, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->type:I

    .line 223
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->keyNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;

    move v9, v5

    iput v9, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->key:I

    .line 224
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->keyNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;

    move-object v9, v6

    iput-object v9, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->chars:[C

    .line 225
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->keyNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;

    move v9, v7

    iput v9, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->modifiers:I

    .line 227
    move-object v8, v0

    invoke-static {v8}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Ljava/util/function/Supplier;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v8

    .line 230
    return-void
.end method

.method public handleMenuEvent(Lcom/sun/glass/ui/View;IIIIZ)V
    .locals 16

    .prologue
    .line 396
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "xAbs":I
    move/from16 v5, p5

    .local v5, "yAbs":I
    move/from16 v6, p6

    .local v6, "isKeyboardTrigger":Z
    sget-boolean v9, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v9, :cond_0

    .line 397
    const-string v9, "MENU_EVENT"

    invoke-static {v9}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 399
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v9

    move-object v7, v9

    .line 401
    .local v7, "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v9, v7

    if-eqz v9, :cond_1

    .line 402
    move-object v9, v7

    const/4 v10, 0x1

    :try_start_0
    invoke-virtual {v9, v10}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 404
    :cond_1
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    invoke-static/range {v9 .. v15}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/glass/ui/View;IIIIZ)Ljava/util/function/Supplier;

    move-result-object v9

    invoke-static {v9}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 417
    move-object v9, v7

    if-eqz v9, :cond_2

    .line 418
    move-object v9, v7

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 420
    :cond_2
    sget-boolean v9, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v9, :cond_3

    .line 421
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 424
    :cond_3
    return-void

    .line 417
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v7

    if-eqz v9, :cond_4

    .line 418
    move-object v9, v7

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 420
    :cond_4
    sget-boolean v9, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v9, :cond_5

    .line 421
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_5
    move-object v9, v8

    throw v9
.end method

.method public handleMouseEvent(Lcom/sun/glass/ui/View;JIIIIIIIZZ)V
    .locals 16

    .prologue
    .line 375
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v2, p2

    .local v2, "time":J
    move/from16 v4, p4

    .local v4, "type":I
    move/from16 v5, p5

    .local v5, "button":I
    move/from16 v6, p6

    .local v6, "x":I
    move/from16 v7, p7

    .local v7, "y":I
    move/from16 v8, p8

    .local v8, "xAbs":I
    move/from16 v9, p9

    .local v9, "yAbs":I
    move/from16 v10, p10

    .local v10, "modifiers":I
    move/from16 v11, p11

    .local v11, "isPopupTrigger":Z
    move/from16 v12, p12

    .local v12, "isSynthesized":Z
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->mouseNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;

    move-object v14, v1

    iput-object v14, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->view:Lcom/sun/glass/ui/View;

    .line 376
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->mouseNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;

    move-wide v14, v2

    iput-wide v14, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->time:J

    .line 377
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->mouseNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;

    move v14, v4

    iput v14, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->type:I

    .line 378
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->mouseNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;

    move v14, v5

    iput v14, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->button:I

    .line 379
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->mouseNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;

    move v14, v6

    iput v14, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->x:I

    .line 380
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->mouseNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;

    move v14, v7

    iput v14, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->y:I

    .line 381
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->mouseNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;

    move v14, v8

    iput v14, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->xAbs:I

    .line 382
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->mouseNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;

    move v14, v9

    iput v14, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->yAbs:I

    .line 383
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->mouseNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;

    move v14, v10

    iput v14, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->modifiers:I

    .line 384
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->mouseNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;

    move v14, v11

    iput-boolean v14, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->isPopupTrigger:Z

    .line 385
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->mouseNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;

    move v14, v12

    iput-boolean v14, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->isSynthesized:Z

    .line 387
    move-object v13, v0

    invoke-static {v13}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Ljava/util/function/Supplier;

    move-result-object v13

    invoke-static {v13}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v13

    .line 390
    return-void
.end method

.method public handleNextTouchEvent(Lcom/sun/glass/ui/View;JIJIIII)V
    .locals 34

    .prologue
    .line 1118
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object/from16 v4, p1

    .local v4, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v5, p2

    .local v5, "time":J
    move/from16 v7, p4

    .local v7, "type":I
    move-wide/from16 v8, p5

    .local v8, "touchId":J
    move/from16 v10, p7

    .local v10, "x":I
    move/from16 v11, p8

    .local v11, "y":I
    move/from16 v12, p9

    .local v12, "xAbs":I
    move/from16 v13, p10

    .local v13, "yAbs":I
    sget-boolean v18, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v18, :cond_0

    .line 1119
    const-string v18, "NEXT_TOUCH_EVENT"

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 1121
    :cond_0
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v18

    move-object/from16 v14, v18

    .line 1123
    .local v14, "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object/from16 v18, v14

    if-eqz v18, :cond_1

    .line 1124
    move-object/from16 v18, v14

    const/16 v19, 0x1

    :try_start_0
    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 1126
    :cond_1
    move-object/from16 v18, v3

    move/from16 v19, v7

    move-object/from16 v20, v4

    move-wide/from16 v21, v8

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    invoke-static/range {v18 .. v26}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;JIIII)Ljava/util/function/Supplier;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .line 1155
    move-object/from16 v18, v14

    if-eqz v18, :cond_2

    .line 1156
    move-object/from16 v18, v14

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 1158
    :cond_2
    sget-boolean v18, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v18, :cond_3

    .line 1159
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 1162
    :cond_3
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v18

    move-object/from16 v15, v18

    .line 1163
    .local v15, "w":Lcom/sun/glass/ui/Window;
    move-object/from16 v18, v15

    if-nez v18, :cond_6

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide/from16 v16, v18

    .line 1164
    .local v16, "pScale":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->gestures:Lcom/sun/javafx/tk/quantum/GestureRecognizers;

    move-object/from16 v18, v0

    move-wide/from16 v19, v5

    move/from16 v21, v7

    move-wide/from16 v22, v8

    move/from16 v24, v10

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v16

    div-double v24, v24, v26

    move/from16 v26, v11

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v16

    div-double v26, v26, v28

    move/from16 v28, v12

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v16

    div-double v28, v28, v30

    move/from16 v30, v13

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v16

    div-double v30, v30, v32

    invoke-virtual/range {v18 .. v31}, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->notifyNextTouchEvent(JIJDDDD)V

    .line 1165
    return-void

    .line 1155
    .end local v15    # "w":Lcom/sun/glass/ui/Window;
    .end local v16    # "pScale":D
    :catchall_0
    move-exception v18

    move-object/from16 v15, v18

    move-object/from16 v18, v14

    if-eqz v18, :cond_4

    .line 1156
    move-object/from16 v18, v14

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 1158
    :cond_4
    sget-boolean v18, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v18, :cond_5

    .line 1159
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v18, v15

    throw v18

    .line 1163
    .restart local v15    # "w":Lcom/sun/glass/ui/Window;
    :cond_6
    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Lcom/sun/glass/ui/Window;->getPlatformScale()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    goto :goto_0
.end method

.method public handleRotateGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIDD)V
    .locals 34

    .prologue
    .line 966
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object/from16 v3, p1

    .local v3, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v4, p2

    .local v4, "time":J
    move/from16 v6, p4

    .local v6, "type":I
    move/from16 v7, p5

    .local v7, "modifiers":I
    move/from16 v8, p6

    .local v8, "isDirect":Z
    move/from16 v9, p7

    .local v9, "isInertia":Z
    move/from16 v10, p8

    .local v10, "originx":I
    move/from16 v11, p9

    .local v11, "originy":I
    move/from16 v12, p10

    .local v12, "originxAbs":I
    move/from16 v13, p11

    .local v13, "originyAbs":I
    move-wide/from16 v14, p12

    .local v14, "dangle":D
    move-wide/from16 v16, p14

    .local v16, "totalangle":D
    sget-boolean v20, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v20, :cond_0

    .line 967
    const-string v20, "ROTATE_GESTURE_EVENT"

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 969
    :cond_0
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v20

    move-object/from16 v18, v20

    .line 971
    .local v18, "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object/from16 v20, v18

    if-eqz v20, :cond_1

    .line 972
    move-object/from16 v20, v18

    const/16 v21, 0x1

    :try_start_0
    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 974
    :cond_1
    move-object/from16 v20, v2

    move/from16 v21, v6

    move-object/from16 v22, v3

    move-wide/from16 v23, v14

    move-wide/from16 v25, v16

    move/from16 v27, v10

    move/from16 v28, v11

    move/from16 v29, v12

    move/from16 v30, v13

    move/from16 v31, v7

    move/from16 v32, v8

    move/from16 v33, v9

    invoke-static/range {v20 .. v33}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$17;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/util/function/Supplier;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 1008
    move-object/from16 v20, v18

    if-eqz v20, :cond_2

    .line 1009
    move-object/from16 v20, v18

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 1011
    :cond_2
    sget-boolean v20, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v20, :cond_3

    .line 1012
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 1015
    :cond_3
    return-void

    .line 1008
    :catchall_0
    move-exception v20

    move-object/from16 v19, v20

    move-object/from16 v20, v18

    if-eqz v20, :cond_4

    .line 1009
    move-object/from16 v20, v18

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 1011
    :cond_4
    sget-boolean v20, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v20, :cond_5

    .line 1012
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v20, v19

    throw v20
.end method

.method public handleScrollEvent(Lcom/sun/glass/ui/View;JIIIIDDIIIIIDD)V
    .locals 44

    .prologue
    .line 433
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object/from16 v2, p1

    .local v2, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v3, p2

    .local v3, "time":J
    move/from16 v5, p4

    .local v5, "x":I
    move/from16 v6, p5

    .local v6, "y":I
    move/from16 v7, p6

    .local v7, "xAbs":I
    move/from16 v8, p7

    .local v8, "yAbs":I
    move-wide/from16 v9, p8

    .local v9, "deltaX":D
    move-wide/from16 v11, p10

    .local v11, "deltaY":D
    move/from16 v13, p12

    .local v13, "modifiers":I
    move/from16 v14, p13

    .local v14, "lines":I
    move/from16 v15, p14

    .local v15, "chars":I
    move/from16 v16, p15

    .local v16, "defaultLines":I
    move/from16 v17, p16

    .local v17, "defaultChars":I
    move-wide/from16 v18, p17

    .local v18, "xMultiplier":D
    move-wide/from16 v20, p19

    .local v20, "yMultiplier":D
    sget-boolean v24, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v24, :cond_0

    .line 434
    const-string v24, "SCROLL_EVENT"

    invoke-static/range {v24 .. v24}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 436
    :cond_0
    move-object/from16 v24, v1

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v24

    move-object/from16 v22, v24

    .line 438
    .local v22, "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object/from16 v24, v22

    if-eqz v24, :cond_1

    .line 439
    move-object/from16 v24, v22

    const/16 v25, 0x1

    :try_start_0
    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 441
    :cond_1
    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move-wide/from16 v26, v9

    move-wide/from16 v28, v11

    move-wide/from16 v30, v18

    move-wide/from16 v32, v20

    move/from16 v34, v15

    move/from16 v35, v14

    move/from16 v36, v17

    move/from16 v37, v16

    move/from16 v38, v5

    move/from16 v39, v6

    move/from16 v40, v7

    move/from16 v41, v8

    move/from16 v42, v13

    invoke-static/range {v24 .. v42}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/glass/ui/View;DDDDIIIIIIIII)Ljava/util/function/Supplier;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v24

    .line 463
    move-object/from16 v24, v22

    if-eqz v24, :cond_2

    .line 464
    move-object/from16 v24, v22

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 466
    :cond_2
    sget-boolean v24, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v24, :cond_3

    .line 467
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 470
    :cond_3
    return-void

    .line 463
    :catchall_0
    move-exception v24

    move-object/from16 v23, v24

    move-object/from16 v24, v22

    if-eqz v24, :cond_4

    .line 464
    move-object/from16 v24, v22

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 466
    :cond_4
    sget-boolean v24, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v24, :cond_5

    .line 467
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v24, v23

    throw v24
.end method

.method public handleScrollGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIIDDDDDD)V
    .locals 53

    .prologue
    .line 844
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object/from16 v3, p1

    .local v3, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v4, p2

    .local v4, "time":J
    move/from16 v6, p4

    .local v6, "type":I
    move/from16 v7, p5

    .local v7, "modifiers":I
    move/from16 v8, p6

    .local v8, "isDirect":Z
    move/from16 v9, p7

    .local v9, "isInertia":Z
    move/from16 v10, p8

    .local v10, "touchCount":I
    move/from16 v11, p9

    .local v11, "x":I
    move/from16 v12, p10

    .local v12, "y":I
    move/from16 v13, p11

    .local v13, "xAbs":I
    move/from16 v14, p12

    .local v14, "yAbs":I
    move-wide/from16 v15, p13

    .local v15, "dx":D
    move-wide/from16 v17, p15

    .local v17, "dy":D
    move-wide/from16 v19, p17

    .local v19, "totaldx":D
    move-wide/from16 v21, p19

    .local v21, "totaldy":D
    move-wide/from16 v23, p21

    .local v23, "multiplierX":D
    move-wide/from16 v25, p23

    .local v25, "multiplierY":D
    sget-boolean v29, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v29, :cond_0

    .line 845
    const-string v29, "SCROLL_GESTURE_EVENT"

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 847
    :cond_0
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v29

    move-object/from16 v27, v29

    .line 849
    .local v27, "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object/from16 v29, v27

    if-eqz v29, :cond_1

    .line 850
    move-object/from16 v29, v27

    const/16 v30, 0x1

    :try_start_0
    invoke-virtual/range {v29 .. v30}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 852
    :cond_1
    move-object/from16 v29, v2

    move/from16 v30, v6

    move-object/from16 v31, v3

    move-wide/from16 v32, v15

    move-wide/from16 v34, v17

    move-wide/from16 v36, v19

    move-wide/from16 v38, v21

    move-wide/from16 v40, v23

    move-wide/from16 v42, v25

    move/from16 v44, v10

    move/from16 v45, v11

    move/from16 v46, v12

    move/from16 v47, v13

    move/from16 v48, v14

    move/from16 v49, v7

    move/from16 v50, v8

    move/from16 v51, v9

    invoke-static/range {v29 .. v51}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDDDDDIIIIIIZZ)Ljava/util/function/Supplier;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v29

    .line 890
    move-object/from16 v29, v27

    if-eqz v29, :cond_2

    .line 891
    move-object/from16 v29, v27

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 893
    :cond_2
    sget-boolean v29, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v29, :cond_3

    .line 894
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 897
    :cond_3
    return-void

    .line 890
    :catchall_0
    move-exception v29

    move-object/from16 v28, v29

    move-object/from16 v29, v27

    if-eqz v29, :cond_4

    .line 891
    move-object/from16 v29, v27

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 893
    :cond_4
    sget-boolean v29, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v29, :cond_5

    .line 894
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v29, v28

    throw v29
.end method

.method public handleSwipeGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIII)V
    .locals 28

    .prologue
    .line 1023
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object/from16 v3, p1

    .local v3, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v4, p2

    .local v4, "time":J
    move/from16 v6, p4

    .local v6, "type":I
    move/from16 v7, p5

    .local v7, "modifiers":I
    move/from16 v8, p6

    .local v8, "isDirect":Z
    move/from16 v9, p7

    .local v9, "isInertia":Z
    move/from16 v10, p8

    .local v10, "touchCount":I
    move/from16 v11, p9

    .local v11, "dir":I
    move/from16 v12, p10

    .local v12, "x":I
    move/from16 v13, p11

    .local v13, "y":I
    move/from16 v14, p12

    .local v14, "xAbs":I
    move/from16 v15, p13

    .local v15, "yAbs":I
    sget-boolean v18, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v18, :cond_0

    .line 1024
    const-string v18, "SWIPE_EVENT"

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 1026
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v18

    move-object/from16 v16, v18

    .line 1028
    .local v16, "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object/from16 v18, v16

    if-eqz v18, :cond_1

    .line 1029
    move-object/from16 v18, v16

    const/16 v19, 0x1

    :try_start_0
    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 1031
    :cond_1
    move-object/from16 v18, v2

    move/from16 v19, v11

    move-object/from16 v20, v3

    move/from16 v21, v10

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move/from16 v26, v7

    move/from16 v27, v8

    invoke-static/range {v18 .. v27}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$18;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;IIIIIIZ)Ljava/util/function/Supplier;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .line 1068
    move-object/from16 v18, v16

    if-eqz v18, :cond_2

    .line 1069
    move-object/from16 v18, v16

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 1071
    :cond_2
    sget-boolean v18, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v18, :cond_3

    .line 1072
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 1075
    :cond_3
    return-void

    .line 1068
    :catchall_0
    move-exception v18

    move-object/from16 v17, v18

    move-object/from16 v18, v16

    if-eqz v18, :cond_4

    .line 1069
    move-object/from16 v18, v16

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 1071
    :cond_4
    sget-boolean v18, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v18, :cond_5

    .line 1072
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v18, v17

    throw v18
.end method

.method public handleViewEvent(Lcom/sun/glass/ui/View;JI)V
    .locals 10

    .prologue
    .line 820
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move-wide v2, p2

    .local v2, "time":J
    move v4, p4

    .local v4, "type":I
    sget-boolean v6, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v6, :cond_0

    .line 821
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VIEW_EVENT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v4

    invoke-static {v7}, Lcom/sun/glass/events/ViewEvent;->getTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 823
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->viewNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->view:Lcom/sun/glass/ui/View;

    .line 824
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->viewNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;

    move-wide v7, v2

    iput-wide v7, v6, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->time:J

    .line 825
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->viewNotification:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;

    move v7, v4

    iput v7, v6, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->type:I

    .line 827
    move-object v6, v0

    :try_start_0
    invoke-static {v6}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$14;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Ljava/util/function/Supplier;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 832
    sget-boolean v6, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v6, :cond_1

    .line 833
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 836
    :cond_1
    return-void

    .line 832
    :catchall_0
    move-exception v6

    move-object v5, v6

    sget-boolean v6, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v6, :cond_2

    .line 833
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_2
    move-object v6, v5

    throw v6
.end method

.method public handleZoomGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIDDDD)V
    .locals 38

    .prologue
    .line 907
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object/from16 v3, p1

    .local v3, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v4, p2

    .local v4, "time":J
    move/from16 v6, p4

    .local v6, "type":I
    move/from16 v7, p5

    .local v7, "modifiers":I
    move/from16 v8, p6

    .local v8, "isDirect":Z
    move/from16 v9, p7

    .local v9, "isInertia":Z
    move/from16 v10, p8

    .local v10, "originx":I
    move/from16 v11, p9

    .local v11, "originy":I
    move/from16 v12, p10

    .local v12, "originxAbs":I
    move/from16 v13, p11

    .local v13, "originyAbs":I
    move-wide/from16 v14, p12

    .local v14, "scale":D
    move-wide/from16 v16, p14

    .local v16, "expansion":D
    move-wide/from16 v18, p16

    .local v18, "totalscale":D
    move-wide/from16 v20, p18

    .local v20, "totalexpansion":D
    sget-boolean v24, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v24, :cond_0

    .line 908
    const-string v24, "ZOOM_GESTURE_EVENT"

    invoke-static/range {v24 .. v24}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 910
    :cond_0
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v24

    move-object/from16 v22, v24

    .line 912
    .local v22, "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object/from16 v24, v22

    if-eqz v24, :cond_1

    .line 913
    move-object/from16 v24, v22

    const/16 v25, 0x1

    :try_start_0
    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 915
    :cond_1
    move-object/from16 v24, v2

    move/from16 v25, v6

    move-object/from16 v26, v3

    move-wide/from16 v27, v14

    move-wide/from16 v29, v18

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v7

    move/from16 v36, v8

    move/from16 v37, v9

    invoke-static/range {v24 .. v37}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/util/function/Supplier;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v24

    .line 950
    move-object/from16 v24, v22

    if-eqz v24, :cond_2

    .line 951
    move-object/from16 v24, v22

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 953
    :cond_2
    sget-boolean v24, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v24, :cond_3

    .line 954
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 957
    :cond_3
    return-void

    .line 950
    :catchall_0
    move-exception v24

    move-object/from16 v23, v24

    move-object/from16 v24, v22

    if-eqz v24, :cond_4

    .line 951
    move-object/from16 v24, v22

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 953
    :cond_4
    sget-boolean v24, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v24, :cond_5

    .line 954
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v24, v23

    throw v24
.end method
