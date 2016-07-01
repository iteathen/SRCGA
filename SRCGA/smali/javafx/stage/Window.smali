.class public Ljavafx/stage/Window;
.super Ljava/lang/Object;
.source "Window.java"

# interfaces
.implements Ljavafx/event/EventTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/stage/Window$TKBoundsConfigurator;,
        Ljavafx/stage/Window$SceneModel;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CENTER_ON_SCREEN_X_FRACTION:F = 0.5f

.field private static final CENTER_ON_SCREEN_Y_FRACTION:F = 0.33333334f

.field private static final USER_DATA_KEY:Ljava/lang/Object;

.field private static windowQueue:Lcom/sun/javafx/util/WeakReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/util/WeakReferenceQueue",
            "<",
            "Ljavafx/stage/Window;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final acc:Ljava/security/AccessControlContext;

.field private eventDispatcher:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private focusGrabCounter:I

.field private focused:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field hasBeenVisible:Z

.field private height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private heightExplicit:Z

.field protected volatile impl_peer:Lcom/sun/javafx/tk/TKStage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private internalEventDispatcher:Lcom/sun/javafx/stage/WindowEventDispatcher;

.field private onCloseRequest:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onHidden:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onHiding:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onShowing:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onShown:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private opacity:Ljavafx/beans/property/DoubleProperty;

.field private peerBoundsConfigurator:Ljavafx/stage/Window$TKBoundsConfigurator;

.field protected peerListener:Lcom/sun/javafx/stage/WindowPeerListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private properties:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private scene:Ljavafx/stage/Window$SceneModel;

.field private final screen:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/stage/Screen;",
            ">;"
        }
    .end annotation
.end field

.field private showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private sizeToScene:Z

.field private width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private widthExplicit:Z

.field private x:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private xExplicit:Z

.field private y:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private yExplicit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    const-class v0, Ljavafx/stage/Window;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/stage/Window;->$assertionsDisabled:Z

    .line 82
    new-instance v0, Lcom/sun/javafx/util/WeakReferenceQueue;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/util/WeakReferenceQueue;-><init>()V

    sput-object v0, Ljavafx/stage/Window;->windowQueue:Lcom/sun/javafx/util/WeakReferenceQueue;

    .line 85
    new-instance v0, Ljavafx/stage/Window$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/stage/Window$1;-><init>()V

    invoke-static {v0}, Lcom/sun/javafx/stage/WindowHelper;->setWindowAccessor(Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;)V

    .line 458
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljavafx/stage/Window;->USER_DATA_KEY:Ljava/lang/Object;

    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 9

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 153
    move-object v1, v0

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v2

    iput-object v2, v1, Ljavafx/stage/Window;->acc:Ljava/security/AccessControlContext;

    .line 184
    move-object v1, v0

    new-instance v2, Ljavafx/stage/Window$TKBoundsConfigurator;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/stage/Window$TKBoundsConfigurator;-><init>(Ljavafx/stage/Window;)V

    iput-object v2, v1, Ljavafx/stage/Window;->peerBoundsConfigurator:Ljavafx/stage/Window$TKBoundsConfigurator;

    .line 211
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/stage/Window;->sizeToScene:Z

    .line 287
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/stage/Window;->xExplicit:Z

    .line 295
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "x"

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/stage/Window;->x:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 310
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/stage/Window;->yExplicit:Z

    .line 318
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "y"

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/stage/Window;->y:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 345
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/stage/Window;->widthExplicit:Z

    .line 361
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "width"

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/stage/Window;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 372
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/stage/Window;->heightExplicit:Z

    .line 386
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "height"

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/stage/Window;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 418
    move-object v1, v0

    new-instance v2, Ljavafx/stage/Window$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/stage/Window$2;-><init>(Ljavafx/stage/Window;)V

    iput-object v2, v1, Ljavafx/stage/Window;->focused:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 529
    move-object v1, v0

    new-instance v2, Ljavafx/stage/Window$SceneModel;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/stage/Window$SceneModel;-><init>(Ljavafx/stage/Window;Ljavafx/stage/Window$1;)V

    iput-object v2, v1, Ljavafx/stage/Window;->scene:Ljavafx/stage/Window$SceneModel;

    .line 808
    move-object v1, v0

    new-instance v2, Ljavafx/stage/Window$9;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/stage/Window$9;-><init>(Ljavafx/stage/Window;)V

    iput-object v2, v1, Ljavafx/stage/Window;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 928
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/stage/Window;->hasBeenVisible:Z

    .line 1191
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-static {}, Ljavafx/stage/Screen;->getPrimary()Ljavafx/stage/Screen;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/stage/Window;->screen:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 157
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/Window;->initializeInternalEventDispatcher()V

    .line 158
    return-void
.end method

.method static synthetic access$000(Ljavafx/stage/Window;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/Window;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x2":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/stage/Window;->notifyScreenChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Ljavafx/stage/Window;)Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/Window;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/Window;->screenProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/stage/Window;
    return-object v0
.end method

.method static synthetic access$1000(Ljavafx/stage/Window;)Z
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/Window;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/stage/Window;->yExplicit:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/stage/Window;
    return v0
.end method

.method static synthetic access$1100(Ljavafx/stage/Window;)Z
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/Window;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/stage/Window;->sizeToScene:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/stage/Window;
    return v0
.end method

.method static synthetic access$1102(Ljavafx/stage/Window;Z)Z
    .locals 7

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/Window;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/stage/Window;->sizeToScene:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/stage/Window;
    return v0
.end method

.method static synthetic access$200(Ljavafx/stage/Window;Z)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/Window;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/stage/Window;->focusChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Ljavafx/stage/Window;)Z
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/Window;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/stage/Window;->widthExplicit:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/stage/Window;
    return v0
.end method

.method static synthetic access$500(Ljavafx/stage/Window;)Z
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/Window;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/stage/Window;->heightExplicit:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/stage/Window;
    return v0
.end method

.method static synthetic access$600(Ljavafx/stage/Window;Z)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/Window;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/stage/Window;->adjustSize(Z)V

    return-void
.end method

.method static synthetic access$700()Lcom/sun/javafx/util/WeakReferenceQueue;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Ljavafx/stage/Window;->windowQueue:Lcom/sun/javafx/util/WeakReferenceQueue;

    return-object v0
.end method

.method static synthetic access$800(Ljavafx/stage/Window;)Ljavafx/stage/Window$TKBoundsConfigurator;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->peerBoundsConfigurator:Ljavafx/stage/Window$TKBoundsConfigurator;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/stage/Window;
    return-object v0
.end method

.method static synthetic access$900(Ljavafx/stage/Window;)Z
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/Window;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/stage/Window;->xExplicit:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/stage/Window;
    return v0
.end method

.method private adjustSize(Z)V
    .locals 23

    .prologue
    .line 227
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move/from16 v1, p1

    .local v1, "selfSizePriority":Z
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v14

    if-nez v14, :cond_0

    .line 228
    .line 255
    :goto_0
    return-void

    .line 230
    :cond_0
    move-object v14, v0

    iget-object v14, v14, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v14, :cond_1

    .line 231
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v14

    invoke-virtual {v14}, Ljavafx/scene/Scene;->getWidth()D

    move-result-wide v14

    move-wide v2, v14

    .line 232
    .local v2, "sceneWidth":D
    move-wide v14, v2

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_2

    move-wide v14, v2

    :goto_1
    move-wide v4, v14

    .line 233
    .local v4, "cw":D
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    move-wide v6, v14

    .line 234
    .local v6, "w":D
    move v14, v1

    if-eqz v14, :cond_3

    move-object v14, v0

    iget-boolean v14, v14, Ljavafx/stage/Window;->widthExplicit:Z

    if-eqz v14, :cond_3

    .line 235
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/stage/Window;->getWidth()D

    move-result-wide v14

    move-wide v6, v14

    .line 241
    :goto_2
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v14

    invoke-virtual {v14}, Ljavafx/scene/Scene;->getHeight()D

    move-result-wide v14

    move-wide v8, v14

    .line 242
    .local v8, "sceneHeight":D
    move-wide v14, v8

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_6

    move-wide v14, v8

    :goto_3
    move-wide v10, v14

    .line 243
    .local v10, "ch":D
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    move-wide v12, v14

    .line 244
    .local v12, "h":D
    move v14, v1

    if-eqz v14, :cond_7

    move-object v14, v0

    iget-boolean v14, v14, Ljavafx/stage/Window;->heightExplicit:Z

    if-eqz v14, :cond_7

    .line 245
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/stage/Window;->getHeight()D

    move-result-wide v14

    move-wide v12, v14

    .line 252
    :goto_4
    move-object v14, v0

    iget-object v14, v14, Ljavafx/stage/Window;->peerBoundsConfigurator:Ljavafx/stage/Window$TKBoundsConfigurator;

    move-wide v15, v6

    move-wide/from16 v17, v12

    move-wide/from16 v19, v4

    move-wide/from16 v21, v10

    invoke-virtual/range {v14 .. v22}, Ljavafx/stage/Window$TKBoundsConfigurator;->setSize(DDDD)V

    .line 253
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/stage/Window;->applyBounds()V

    .line 255
    .end local v2    # "sceneWidth":D
    .end local v4    # "cw":D
    .end local v6    # "w":D
    .end local v8    # "sceneHeight":D
    .end local v10    # "ch":D
    .end local v12    # "h":D
    :cond_1
    goto :goto_0

    .line 232
    .restart local v2    # "sceneWidth":D
    :cond_2
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    goto :goto_1

    .line 236
    .restart local v4    # "cw":D
    .restart local v6    # "w":D
    :cond_3
    move-wide v14, v4

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_5

    .line 237
    move-object v14, v0

    iget-boolean v14, v14, Ljavafx/stage/Window;->widthExplicit:Z

    if-eqz v14, :cond_4

    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/stage/Window;->getWidth()D

    move-result-wide v14

    :goto_5
    move-wide v6, v14

    goto :goto_2

    :cond_4
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    goto :goto_5

    .line 239
    :cond_5
    move-object v14, v0

    const/4 v15, 0x0

    iput-boolean v15, v14, Ljavafx/stage/Window;->widthExplicit:Z

    goto :goto_2

    .line 242
    .restart local v8    # "sceneHeight":D
    :cond_6
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    goto :goto_3

    .line 246
    .restart local v10    # "ch":D
    .restart local v12    # "h":D
    :cond_7
    move-wide v14, v10

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_9

    .line 247
    move-object v14, v0

    iget-boolean v14, v14, Ljavafx/stage/Window;->heightExplicit:Z

    if-eqz v14, :cond_8

    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/stage/Window;->getHeight()D

    move-result-wide v14

    :goto_6
    move-wide v12, v14

    goto :goto_4

    :cond_8
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    goto :goto_6

    .line 249
    :cond_9
    move-object v14, v0

    const/4 v15, 0x0

    iput-boolean v15, v14, Ljavafx/stage/Window;->heightExplicit:Z

    goto :goto_4
.end method

.method private focusChanged(Z)V
    .locals 3

    .prologue
    .line 1158
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move v1, p1

    .local v1, "newIsFocused":Z
    move-object v2, v0

    iget v2, v2, Ljavafx/stage/Window;->focusGrabCounter:I

    if-lez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v2, :cond_0

    move v2, v1

    if-eqz v2, :cond_0

    .line 1159
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    invoke-interface {v2}, Lcom/sun/javafx/tk/TKStage;->grabFocus()Z

    move-result v2

    .line 1161
    :cond_0
    return-void
.end method

.method private getWindowScreen()Ljavafx/stage/Screen;
    .locals 13

    .prologue
    .line 1172
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v2, v0

    move-object v1, v2

    .line 1174
    .local v1, "window":Ljavafx/stage/Window;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/stage/Window;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    .line 1175
    invoke-virtual {v2}, Ljavafx/stage/Window;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    .line 1176
    invoke-virtual {v2}, Ljavafx/stage/Window;->getWidth()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    .line 1177
    invoke-virtual {v2}, Ljavafx/stage/Window;->getHeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1178
    new-instance v2, Ljavafx/geometry/Rectangle2D;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    move-object v4, v1

    .line 1179
    invoke-virtual {v4}, Ljavafx/stage/Window;->getX()D

    move-result-wide v4

    move-object v6, v1

    .line 1180
    invoke-virtual {v6}, Ljavafx/stage/Window;->getY()D

    move-result-wide v6

    move-object v8, v1

    .line 1181
    invoke-virtual {v8}, Ljavafx/stage/Window;->getWidth()D

    move-result-wide v8

    move-object v10, v1

    .line 1182
    invoke-virtual {v10}, Ljavafx/stage/Window;->getHeight()D

    move-result-wide v10

    invoke-direct/range {v3 .. v11}, Ljavafx/geometry/Rectangle2D;-><init>(DDDD)V

    .line 1178
    invoke-static {v2}, Lcom/sun/javafx/util/Utils;->getScreenForRectangle(Ljavafx/geometry/Rectangle2D;)Ljavafx/stage/Screen;

    move-result-object v2

    move-object v0, v2

    .line 1188
    .end local v0    # "this":Ljavafx/stage/Window;
    :goto_0
    return-object v0

    .line 1185
    .restart local v0    # "this":Ljavafx/stage/Window;
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/stage/Window;->getWindowOwner()Ljavafx/stage/Window;

    move-result-object v2

    move-object v1, v2

    .line 1186
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1188
    invoke-static {}, Ljavafx/stage/Screen;->getPrimary()Ljavafx/stage/Screen;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static impl_getWindows()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavafx/stage/Window;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    move-object v0, v1

    .line 146
    .local v0, "securityManager":Ljava/lang/SecurityManager;
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 147
    move-object v1, v0

    new-instance v2, Ljava/security/AllPermission;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/security/AllPermission;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 150
    :cond_0
    sget-object v1, Ljavafx/stage/Window;->windowQueue:Lcom/sun/javafx/util/WeakReferenceQueue;

    invoke-virtual {v1}, Lcom/sun/javafx/util/WeakReferenceQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "securityManager":Ljava/lang/SecurityManager;
    return-object v0
.end method

.method private initializeInternalEventDispatcher()V
    .locals 8

    .prologue
    .line 1099
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->internalEventDispatcher:Lcom/sun/javafx/stage/WindowEventDispatcher;

    if-nez v1, :cond_0

    .line 1100
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Window;->createInternalEventDispatcher()Lcom/sun/javafx/stage/WindowEventDispatcher;

    move-result-object v2

    iput-object v2, v1, Ljavafx/stage/Window;->internalEventDispatcher:Lcom/sun/javafx/stage/WindowEventDispatcher;

    .line 1101
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "eventDispatcher"

    move-object v6, v0

    iget-object v6, v6, Ljavafx/stage/Window;->internalEventDispatcher:Lcom/sun/javafx/stage/WindowEventDispatcher;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/stage/Window;->eventDispatcher:Ljavafx/beans/property/ObjectProperty;

    .line 1106
    :cond_0
    return-void
.end method

.method private notifyScreenChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1195
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, p1

    .local v1, "from":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "to":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window;->screen:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v4, v2

    invoke-static {v4}, Ljavafx/stage/Screen;->getScreenForNative(Ljava/lang/Object;)Ljavafx/stage/Screen;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 1196
    return-void
.end method

.method private screenProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/stage/Screen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1192
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->screen:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method private setShowing(Z)V
    .locals 4

    .prologue
    .line 921
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move v1, p1

    .local v1, "value":Z
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 922
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Window;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 923
    return-void
.end method


# virtual methods
.method public final addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1053
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/Window;->getInternalEventDispatcher()Lcom/sun/javafx/stage/WindowEventDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/stage/WindowEventDispatcher;->getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 1054
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1055
    return-void
.end method

.method public final addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1015
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/Window;->getInternalEventDispatcher()Lcom/sun/javafx/stage/WindowEventDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/stage/WindowEventDispatcher;->getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 1016
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1017
    return-void
.end method

.method final applyBounds()V
    .locals 2

    .prologue
    .line 1164
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->peerBoundsConfigurator:Ljavafx/stage/Window$TKBoundsConfigurator;

    invoke-virtual {v1}, Ljavafx/stage/Window$TKBoundsConfigurator;->apply()V

    .line 1165
    return-void
.end method

.method public buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;
    .locals 5

    .prologue
    .line 1133
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, p1

    .local v1, "tail":Ljavafx/event/EventDispatchChain;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window;->eventDispatcher:Ljavafx/beans/property/ObjectProperty;

    if-eqz v3, :cond_0

    .line 1134
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window;->eventDispatcher:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventDispatcher;

    move-object v2, v3

    .line 1135
    .local v2, "eventDispatcherValue":Ljavafx/event/EventDispatcher;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1136
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v3

    move-object v1, v3

    .line 1140
    .end local v2    # "eventDispatcherValue":Ljavafx/event/EventDispatcher;
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public centerOnScreen()V
    .locals 13

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljavafx/stage/Window;->xExplicit:Z

    .line 268
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljavafx/stage/Window;->yExplicit:Z

    .line 269
    move-object v6, v0

    iget-object v6, v6, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v6, :cond_0

    .line 270
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/stage/Window;->getWindowScreen()Ljavafx/stage/Screen;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/stage/Screen;->getVisualBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v6

    move-object v1, v6

    .line 271
    .local v1, "bounds":Ljavafx/geometry/Rectangle2D;
    move-object v6, v1

    .line 272
    invoke-virtual {v6}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Rectangle2D;->getWidth()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/stage/Window;->getWidth()D

    move-result-wide v10

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-wide v2, v6

    .line 274
    .local v2, "centerX":D
    move-object v6, v1

    .line 275
    invoke-virtual {v6}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/stage/Window;->getHeight()D

    move-result-wide v10

    sub-double/2addr v8, v10

    const-wide v10, 0x3fd5555560000000L    # 0.3333333432674408

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 278
    .local v4, "centerY":D
    move-object v6, v0

    iget-object v6, v6, Ljavafx/stage/Window;->x:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 279
    move-object v6, v0

    iget-object v6, v6, Ljavafx/stage/Window;->y:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 280
    move-object v6, v0

    iget-object v6, v6, Ljavafx/stage/Window;->peerBoundsConfigurator:Ljavafx/stage/Window$TKBoundsConfigurator;

    move-wide v7, v2

    move-wide v9, v4

    const/high16 v11, 0x3f000000    # 0.5f

    const v12, 0x3eaaaaab

    invoke-virtual/range {v6 .. v12}, Ljavafx/stage/Window$TKBoundsConfigurator;->setLocation(DDFF)V

    .line 283
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/stage/Window;->applyBounds()V

    .line 285
    .end local v1    # "bounds":Ljavafx/geometry/Rectangle2D;
    .end local v2    # "centerX":D
    .end local v4    # "centerY":D
    :cond_0
    return-void
.end method

.method createInternalEventDispatcher()Lcom/sun/javafx/stage/WindowEventDispatcher;
    .locals 5

    .prologue
    .line 1109
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    new-instance v1, Lcom/sun/javafx/stage/WindowEventDispatcher;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/stage/WindowEventDispatcher;-><init>(Ljavafx/stage/Window;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method decreaseFocusGrabCounter()V
    .locals 6

    .prologue
    .line 1152
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Ljavafx/stage/Window;->focusGrabCounter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Ljavafx/stage/Window;->focusGrabCounter:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v1, :cond_0

    .line 1153
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKStage;->ungrabFocus()V

    .line 1155
    :cond_0
    return-void
.end method

.method public final eventDispatcherProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventDispatcher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 995
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/Window;->initializeInternalEventDispatcher()V

    .line 996
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->eventDispatcher:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public final fireEvent(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 1120
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 1121
    return-void
.end method

.method public final focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->focused:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public final getEventDispatcher()Ljavafx/event/EventDispatcher;
    .locals 2

    .prologue
    .line 991
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/Window;->eventDispatcherProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventDispatcher;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public final getHeight()D
    .locals 3

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-wide v0
.end method

.method getInternalEventDispatcher()Lcom/sun/javafx/stage/WindowEventDispatcher;
    .locals 2

    .prologue
    .line 1094
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/Window;->initializeInternalEventDispatcher()V

    .line 1095
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->internalEventDispatcher:Lcom/sun/javafx/stage/WindowEventDispatcher;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public final getOnCloseRequest()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 657
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onCloseRequest:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onCloseRequest:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0

    .restart local v0    # "this":Ljavafx/stage/Window;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getOnHidden()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 777
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onHidden:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0

    .restart local v0    # "this":Ljavafx/stage/Window;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onHidden:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnHiding()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 745
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onHiding:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0

    .restart local v0    # "this":Ljavafx/stage/Window;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onHiding:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnShowing()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onShowing:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0

    .restart local v0    # "this":Ljavafx/stage/Window;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onShowing:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnShown()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onShown:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0

    .restart local v0    # "this":Ljavafx/stage/Window;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onShown:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOpacity()D
    .locals 4

    .prologue
    .line 619
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/Window;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Window;->opacity:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/stage/Window;
    return-wide v1

    .restart local v1    # "this":Ljavafx/stage/Window;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Window;->opacity:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getProperties()Ljavafx/collections/ObservableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->properties:Ljavafx/collections/ObservableMap;

    if-nez v1, :cond_0

    .line 473
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljavafx/collections/FXCollections;->observableMap(Ljava/util/Map;)Ljavafx/collections/ObservableMap;

    move-result-object v2

    iput-object v2, v1, Ljavafx/stage/Window;->properties:Ljavafx/collections/ObservableMap;

    .line 475
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->properties:Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public final getScene()Ljavafx/scene/Scene;
    .locals 2

    .prologue
    .line 531
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->scene:Ljavafx/stage/Window$SceneModel;

    invoke-virtual {v1}, Ljavafx/stage/Window$SceneModel;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Scene;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/Window;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v1

    sget-object v2, Ljavafx/stage/Window;->USER_DATA_KEY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public final getWidth()D
    .locals 3

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-wide v0
.end method

.method getWindowOwner()Ljavafx/stage/Window;
    .locals 2

    .prologue
    .line 1168
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public final getX()D
    .locals 3

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->x:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-wide v0
.end method

.method public final getY()D
    .locals 3

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->y:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-wide v0
.end method

.method public hasProperties()Z
    .locals 2

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->properties:Ljavafx/collections/ObservableMap;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->properties:Ljavafx/collections/ObservableMap;

    invoke-interface {v1}, Ljavafx/collections/ObservableMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return v0

    .restart local v0    # "this":Ljavafx/stage/Window;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 947
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/stage/Window;->setShowing(Z)V

    .line 948
    return-void
.end method

.method public impl_getMXWindowType()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public impl_getPeer()Lcom/sun/javafx/tk/TKStage;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method protected impl_visibleChanged(Z)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 969
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move v1, p1

    .local v1, "visible":Z
    sget-boolean v2, Ljavafx/stage/Window;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 970
    :cond_0
    move v2, v1

    if-nez v2, :cond_1

    .line 971
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/stage/Window;->peerListener:Lcom/sun/javafx/stage/WindowPeerListener;

    .line 972
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    .line 974
    :cond_1
    return-void
.end method

.method protected impl_visibleChanging(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 957
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move v1, p1

    .local v1, "visible":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 958
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/Parent;->impl_reapplyCSS()V

    .line 960
    :cond_0
    return-void
.end method

.method increaseFocusGrabCounter()V
    .locals 6

    .prologue
    .line 1146
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Ljavafx/stage/Window;->focusGrabCounter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Ljavafx/stage/Window;->focusGrabCounter:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/Window;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1147
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKStage;->grabFocus()Z

    move-result v1

    .line 1149
    :cond_0
    return-void
.end method

.method public final isFocused()Z
    .locals 2

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->focused:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return v0
.end method

.method public final isShowing()Z
    .locals 2

    .prologue
    .line 924
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return v0
.end method

.method notifyLocationChanged(DD)V
    .locals 9

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-wide v1, p1

    .local v1, "newX":D
    move-wide v3, p3

    .local v3, "newY":D
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/Window;->x:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 342
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/Window;->y:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 343
    return-void
.end method

.method notifySizeChanged(DD)V
    .locals 9

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-wide v1, p1

    .local v1, "newWidth":D
    move-wide v3, p3

    .local v3, "newHeight":D
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/Window;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 406
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/Window;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 407
    return-void
.end method

.method public final onCloseRequestProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 661
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onCloseRequest:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 662
    move-object v1, v0

    new-instance v2, Ljavafx/stage/Window$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/stage/Window$4;-><init>(Ljavafx/stage/Window;)V

    iput-object v2, v1, Ljavafx/stage/Window;->onCloseRequest:Ljavafx/beans/property/ObjectProperty;

    .line 678
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onCloseRequest:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public final onHiddenProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 780
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onHidden:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 781
    move-object v1, v0

    new-instance v2, Ljavafx/stage/Window$8;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/stage/Window$8;-><init>(Ljavafx/stage/Window;)V

    iput-object v2, v1, Ljavafx/stage/Window;->onHidden:Ljavafx/beans/property/ObjectProperty;

    .line 797
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onHidden:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public final onHidingProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 748
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onHiding:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 749
    move-object v1, v0

    new-instance v2, Ljavafx/stage/Window$7;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/stage/Window$7;-><init>(Ljavafx/stage/Window;)V

    iput-object v2, v1, Ljavafx/stage/Window;->onHiding:Ljavafx/beans/property/ObjectProperty;

    .line 765
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onHiding:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public final onShowingProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 690
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onShowing:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 691
    move-object v1, v0

    new-instance v2, Ljavafx/stage/Window$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/stage/Window$5;-><init>(Ljavafx/stage/Window;)V

    iput-object v2, v1, Ljavafx/stage/Window;->onShowing:Ljavafx/beans/property/ObjectProperty;

    .line 707
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onShowing:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public final onShownProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 719
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onShown:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 720
    move-object v1, v0

    new-instance v2, Ljavafx/stage/Window$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/stage/Window$6;-><init>(Ljavafx/stage/Window;)V

    iput-object v2, v1, Ljavafx/stage/Window;->onShown:Ljavafx/beans/property/ObjectProperty;

    .line 736
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->onShown:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public final opacityProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 623
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/Window;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Window;->opacity:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 624
    move-object v2, v1

    new-instance v3, Ljavafx/stage/Window$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/stage/Window$3;-><init>(Ljavafx/stage/Window;D)V

    iput-object v3, v2, Ljavafx/stage/Window;->opacity:Ljavafx/beans/property/DoubleProperty;

    .line 644
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Window;->opacity:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/stage/Window;
    return-object v1
.end method

.method public final removeEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1072
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/Window;->getInternalEventDispatcher()Lcom/sun/javafx/stage/WindowEventDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/stage/WindowEventDispatcher;->getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 1073
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->removeEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1074
    return-void
.end method

.method public final removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1034
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/Window;->getInternalEventDispatcher()Lcom/sun/javafx/stage/WindowEventDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/stage/WindowEventDispatcher;->getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 1035
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1037
    return-void
.end method

.method public final requestFocus()V
    .locals 2

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v1, :cond_0

    .line 446
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKStage;->requestFocus()V

    .line 448
    :cond_0
    return-void
.end method

.method public final sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/Scene;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->scene:Ljavafx/stage/Window$SceneModel;

    invoke-virtual {v1}, Ljavafx/stage/Window$SceneModel;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public final setEventDispatcher(Ljavafx/event/EventDispatcher;)V
    .locals 4

    .prologue
    .line 987
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventDispatcher;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Window;->eventDispatcherProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 988
    return-void
.end method

.method protected final setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1089
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/Window;->getInternalEventDispatcher()Lcom/sun/javafx/stage/WindowEventDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/stage/WindowEventDispatcher;->getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 1090
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1091
    return-void
.end method

.method public final setFocused(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Window;->focused:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    return-void
.end method

.method public final setHeight(D)V
    .locals 7

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 391
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window;->peerBoundsConfigurator:Ljavafx/stage/Window$TKBoundsConfigurator;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/stage/Window$TKBoundsConfigurator;->setWindowHeight(D)V

    .line 392
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/stage/Window;->heightExplicit:Z

    .line 393
    return-void
.end method

.method public final setOnCloseRequest(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 654
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/stage/WindowEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Window;->onCloseRequestProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 655
    return-void
.end method

.method public final setOnHidden(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 775
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/stage/WindowEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Window;->onHiddenProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnHiding(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 743
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/stage/WindowEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Window;->onHidingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnShowing(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/stage/WindowEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Window;->onShowingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnShown(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 714
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/stage/WindowEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Window;->onShownProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOpacity(D)V
    .locals 7

    .prologue
    .line 615
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/Window;->opacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 616
    return-void
.end method

.method protected setScene(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 530
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Scene;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Window;->scene:Ljavafx/stage/Window$SceneModel;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/stage/Window$SceneModel;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Window;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    sget-object v3, Ljavafx/stage/Window;->USER_DATA_KEY:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 501
    return-void
.end method

.method public final setWidth(D)V
    .locals 7

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 366
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window;->peerBoundsConfigurator:Ljavafx/stage/Window$TKBoundsConfigurator;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/stage/Window$TKBoundsConfigurator;->setWindowWidth(D)V

    .line 367
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/stage/Window;->widthExplicit:Z

    .line 368
    return-void
.end method

.method public final setX(D)V
    .locals 7

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/stage/Window;->setXInternal(D)V

    .line 300
    return-void
.end method

.method setXInternal(D)V
    .locals 7

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window;->x:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 306
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window;->peerBoundsConfigurator:Ljavafx/stage/Window$TKBoundsConfigurator;

    move-wide v4, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljavafx/stage/Window$TKBoundsConfigurator;->setX(DF)V

    .line 307
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/stage/Window;->xExplicit:Z

    .line 308
    return-void
.end method

.method public final setY(D)V
    .locals 7

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/stage/Window;->setYInternal(D)V

    .line 323
    return-void
.end method

.method setYInternal(D)V
    .locals 7

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window;->y:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 329
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window;->peerBoundsConfigurator:Ljavafx/stage/Window$TKBoundsConfigurator;

    move-wide v4, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljavafx/stage/Window$TKBoundsConfigurator;->setY(DF)V

    .line 330
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/stage/Window;->yExplicit:Z

    .line 331
    return-void
.end method

.method protected show()V
    .locals 3

    .prologue
    .line 937
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljavafx/stage/Window;->setShowing(Z)V

    .line 938
    return-void
.end method

.method public final showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 925
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public sizeToScene()V
    .locals 3

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v1, :cond_0

    .line 218
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Scene;->impl_preferredSize()V

    .line 219
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/stage/Window;->adjustSize(Z)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/stage/Window;->sizeToScene:Z

    goto :goto_0
.end method

.method public final widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public final xProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->x:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method

.method public final yProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window;->y:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window;
    return-object v0
.end method
