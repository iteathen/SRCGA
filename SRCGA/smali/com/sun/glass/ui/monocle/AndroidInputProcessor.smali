.class Lcom/sun/glass/ui/monocle/AndroidInputProcessor;
.super Ljava/lang/Object;
.source "AndroidInputProcessor.java"


# instance fields
.field private final device:Lcom/sun/glass/ui/monocle/AndroidInputDevice;

.field private final keyInput:Lcom/sun/glass/ui/monocle/KeyInput;

.field final touchPipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/AndroidInputDevice;)V
    .locals 6

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputProcessor;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    move-object v2, v0

    new-instance v3, Lcom/sun/glass/ui/monocle/KeyInput;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/glass/ui/monocle/KeyInput;-><init>()V

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/AndroidInputProcessor;->keyInput:Lcom/sun/glass/ui/monocle/KeyInput;

    .line 34
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/AndroidInputProcessor;->device:Lcom/sun/glass/ui/monocle/AndroidInputDevice;

    .line 35
    move-object v2, v0

    new-instance v3, Lcom/sun/glass/ui/monocle/TouchPipeline;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/glass/ui/monocle/TouchPipeline;-><init>()V

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/AndroidInputProcessor;->touchPipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    .line 36
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/AndroidInputProcessor;->touchPipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    invoke-static {}, Lcom/sun/glass/ui/monocle/TouchInput;->getInstance()Lcom/sun/glass/ui/monocle/TouchInput;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/TouchInput;->getBasePipeline()Lcom/sun/glass/ui/monocle/TouchPipeline;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchPipeline;->add(Lcom/sun/glass/ui/monocle/TouchPipeline;)V

    .line 37
    return-void
.end method


# virtual methods
.method declared-synchronized dispatchKeyEvent(II[CI)V
    .locals 17

    .prologue
    .line 58
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputProcessor;
    move/from16 v1, p1

    .local v1, "type":I
    move/from16 v2, p2

    .local v2, "key":I
    move-object/from16 v3, p3

    .local v3, "chars":[C
    move/from16 v4, p4

    .local v4, "modifiers":I
    move-object/from16 v15, p0

    monitor-enter v15

    :try_start_0
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getFocusedWindow()Lcom/sun/glass/ui/monocle/MonocleWindow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v5, v7

    .line 59
    .local v5, "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v7, v5

    if-nez v7, :cond_0

    .line 60
    .line 72
    :goto_0
    monitor-exit v15

    return-void

    .line 62
    :cond_0
    move-object v7, v5

    :try_start_1
    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getView()Lcom/sun/glass/ui/View;

    move-result-object v7

    check-cast v7, Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v6, v7

    .line 63
    .local v6, "view":Lcom/sun/glass/ui/monocle/MonocleView;
    move-object v7, v6

    if-nez v7, :cond_1

    .line 64
    goto :goto_0

    .line 66
    :cond_1
    new-instance v7, Lcom/sun/glass/ui/monocle/AndroidInputProcessor$1;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    move-object v10, v6

    move v11, v1

    move v12, v2

    move-object v13, v3

    move v14, v4

    invoke-direct/range {v8 .. v14}, Lcom/sun/glass/ui/monocle/AndroidInputProcessor$1;-><init>(Lcom/sun/glass/ui/monocle/AndroidInputProcessor;Lcom/sun/glass/ui/monocle/MonocleView;II[CI)V

    invoke-static {v7}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->runLater(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    goto :goto_0

    .line 58
    .end local v5    # "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    .end local v6    # "view":Lcom/sun/glass/ui/monocle/MonocleView;
    :catchall_0
    move-exception v0

    monitor-exit v15

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AndroidInputProcessor;
    throw v0
.end method

.method processEvents(Lcom/sun/glass/ui/monocle/AndroidInputDevice;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputProcessor;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/AndroidInputProcessor;->touchPipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchPipeline;->pushState(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 51
    return-void
.end method

.method pushEvent(Lcom/sun/glass/ui/monocle/TouchState;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputProcessor;
    move-object v1, p1

    .local v1, "state":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/AndroidInputProcessor;->touchPipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchPipeline;->pushState(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 41
    return-void
.end method

.method declared-synchronized pushKeyEvent(Lcom/sun/glass/ui/monocle/KeyState;)V
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputProcessor;
    move-object v1, p1

    .local v1, "keyState":Lcom/sun/glass/ui/monocle/KeyState;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/glass/ui/monocle/AndroidInputProcessor;->keyInput:Lcom/sun/glass/ui/monocle/KeyInput;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/KeyInput;->setState(Lcom/sun/glass/ui/monocle/KeyState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v4

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AndroidInputProcessor;
    throw v0
.end method
