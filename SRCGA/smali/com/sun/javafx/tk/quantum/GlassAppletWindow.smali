.class Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
.super Ljava/lang/Object;
.source "GlassAppletWindow.java"

# interfaces
.implements Lcom/sun/javafx/tk/AppletWindow;


# instance fields
.field private final glassWindow:Lcom/sun/glass/ui/Window;

.field private serverName:Ljava/lang/String;

.field private topStage:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/stage/Stage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 9

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move-wide v1, p1

    .local v1, "nativeParent":J
    move-object v3, p3

    .local v3, "serverName":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 51
    const-wide/16 v4, 0x0

    move-wide v6, v1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 52
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 53
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "GlassAppletWindow constructor used incorrectly."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 55
    :cond_0
    move-object v4, v0

    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/Application;->createWindow(Lcom/sun/glass/ui/Screen;I)Lcom/sun/glass/ui/Window;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->glassWindow:Lcom/sun/glass/ui/Window;

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_1
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->serverName:Ljava/lang/String;

    .line 58
    move-object v4, v0

    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v5

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/Application;->createWindow(J)Lcom/sun/glass/ui/Window;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->glassWindow:Lcom/sun/glass/ui/Window;

    goto :goto_0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->lambda$setBackgroundColor$310(I)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->lambda$setVisible$311(Z)V

    return-void
.end method

.method static synthetic access$lambda$10(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->lambda$getRemoteLayerId$320(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method static synthetic access$lambda$11(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;Ljava/util/Map;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->lambda$dispatchEvent$321(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;II)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->lambda$setSize$312(II)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->lambda$getWidth$313(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->lambda$getHeight$314(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;II)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->lambda$setPosition$315(II)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->lambda$getPositionX$316(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->lambda$getPositionY$317(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->lambda$getUIScale$318(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->lambda$dispose$319()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private synthetic lambda$dispatchEvent$321(Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move-object v1, p1

    .local v1, "eventInfo":Ljava/util/Map;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->glassWindow:Lcom/sun/glass/ui/Window;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window;->dispatchNpapiEvent(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$dispose$319()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->glassWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Window;->close()V

    .line 136
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    return-object v0
.end method

.method private synthetic lambda$getHeight$314(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move-object v1, p1

    .local v1, "height":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->glassWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v3}, Lcom/sun/glass/ui/Window;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private synthetic lambda$getPositionX$316(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move-object v1, p1

    .local v1, "x":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->glassWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v3}, Lcom/sun/glass/ui/Window;->getX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private synthetic lambda$getPositionY$317(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move-object v1, p1

    .local v1, "y":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->glassWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v3}, Lcom/sun/glass/ui/Window;->getY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private synthetic lambda$getRemoteLayerId$320(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 6

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move-object v1, p1

    .local v1, "id":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->glassWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v3}, Lcom/sun/glass/ui/Window;->getView()Lcom/sun/glass/ui/View;

    move-result-object v3

    move-object v2, v3

    .line 154
    .local v2, "view":Lcom/sun/glass/ui/View;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 155
    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->serverName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/View;->getNativeRemoteLayerId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 157
    :cond_0
    return-void
.end method

.method private synthetic lambda$getUIScale$318(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move-object v1, p1

    .local v1, "uiScale":Ljava/util/concurrent/atomic/AtomicReference;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->glassWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v3}, Lcom/sun/glass/ui/Window;->getPlatformScale()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getWidth$313(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move-object v1, p1

    .local v1, "width":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->glassWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v3}, Lcom/sun/glass/ui/Window;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private synthetic lambda$setBackgroundColor$310(I)V
    .locals 9

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move v1, p1

    .local v1, "color":I
    move v5, v1

    const/16 v6, 0x10

    shr-int/lit8 v5, v5, 0x10

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    move v2, v5

    .line 70
    .local v2, "RR":F
    move v5, v1

    const/16 v6, 0x8

    shr-int/lit8 v5, v5, 0x8

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    move v3, v5

    .line 71
    .local v3, "GG":F
    move v5, v1

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    move v4, v5

    .line 72
    .local v4, "BB":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->glassWindow:Lcom/sun/glass/ui/Window;

    move v6, v2

    move v7, v3

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/glass/ui/Window;->setBackground(FFF)Z

    move-result v5

    .line 73
    return-void
.end method

.method private synthetic lambda$setPosition$315(II)V
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->glassWindow:Lcom/sun/glass/ui/Window;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/Window;->setPosition(II)V

    return-void
.end method

.method private synthetic lambda$setSize$312(II)V
    .locals 6

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->glassWindow:Lcom/sun/glass/ui/Window;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/Window;->setSize(II)V

    return-void
.end method

.method private synthetic lambda$setVisible$311(Z)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move v1, p1

    .local v1, "state":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->glassWindow:Lcom/sun/glass/ui/Window;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method assertStageOrder()V
    .locals 6

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->topStage:Ljava/lang/ref/WeakReference;

    if-eq v4, v5, :cond_0

    .line 172
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->topStage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/stage/Stage;

    move-object v1, v4

    .line 173
    .local v1, "ts":Ljavafx/stage/Stage;
    const/4 v4, 0x0

    move-object v5, v1

    if-eq v4, v5, :cond_0

    .line 174
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/stage/Stage;->impl_getPeer()Lcom/sun/javafx/tk/TKStage;

    move-result-object v4

    move-object v2, v4

    .line 175
    .local v2, "tsp":Lcom/sun/javafx/tk/TKStage;
    move-object v4, v2

    instance-of v4, v4, Lcom/sun/javafx/tk/quantum/WindowStage;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/tk/quantum/WindowStage;

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/WindowStage;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/tk/quantum/WindowStage;

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/WindowStage;->getPlatformWindow()Lcom/sun/glass/ui/Window;

    move-result-object v4

    move-object v3, v4

    .line 180
    .local v3, "pw":Lcom/sun/glass/ui/Window;
    const/4 v4, 0x0

    move-object v5, v3

    if-eq v4, v5, :cond_0

    .line 181
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->toFront()V

    .line 186
    .end local v1    # "ts":Ljavafx/stage/Stage;
    .end local v2    # "tsp":Lcom/sun/javafx/tk/TKStage;
    .end local v3    # "pw":Lcom/sun/glass/ui/Window;
    :cond_0
    return-void
.end method

.method public dispatchEvent(Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move-object v1, p1

    .local v1, "eventInfo":Ljava/util/Map;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow$$Lambda$12;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/glass/ui/Application;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow$$Lambda$10;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;)Ljava/util/function/Supplier;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    .line 138
    return-void
.end method

.method getGlassWindow()Lcom/sun/glass/ui/Window;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->glassWindow:Lcom/sun/glass/ui/Window;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    return-object v0
.end method

.method public getHeight()I
    .locals 6

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v1, v2

    .line 101
    .local v1, "height":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/glass/ui/Application;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 102
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    return v0
.end method

.method public getPositionX()I
    .locals 6

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v1, v2

    .line 113
    .local v1, "x":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/glass/ui/Application;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 114
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    return v0
.end method

.method public getPositionY()I
    .locals 6

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v1, v2

    .line 120
    .local v1, "y":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/glass/ui/Application;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 121
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    return v0
.end method

.method public getRemoteLayerId()I
    .locals 6

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v1, v2

    .line 152
    .local v1, "id":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow$$Lambda$11;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/glass/ui/Application;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 158
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    return v0
.end method

.method public getUIScale()F
    .locals 6

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    .line 127
    .local v1, "uiScale":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Float;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/glass/ui/Application;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 128
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    return v0
.end method

.method public getWidth()I
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v1, v2

    .line 94
    .local v1, "width":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/glass/ui/Application;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 95
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;I)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/glass/ui/Application;->invokeLater(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 79
    return-void
.end method

.method public setPosition(II)V
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;II)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/glass/ui/Application;->invokeLater(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method public setSize(II)V
    .locals 6

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;II)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/glass/ui/Application;->invokeLater(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method public setStageOnTop(Ljavafx/stage/Stage;)V
    .locals 7

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move-object v1, p1

    .local v1, "topStage":Ljavafx/stage/Stage;
    const/4 v2, 0x0

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 143
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->topStage:Ljava/lang/ref/WeakReference;

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->topStage:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move v1, p1

    .local v1, "state":Z
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;Z)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/glass/ui/Application;->invokeLater(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method
