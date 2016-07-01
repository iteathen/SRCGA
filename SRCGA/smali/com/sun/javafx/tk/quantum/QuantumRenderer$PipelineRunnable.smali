.class Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;
.super Ljava/lang/Object;
.source "QuantumRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/QuantumRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipelineRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/tk/quantum/QuantumRenderer;

.field private work:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/tk/quantum/QuantumRenderer;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;
    move-object v1, p1

    move-object v2, p2

    .local v2, "runner":Ljava/lang/Runnable;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;->this$0:Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 86
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;->work:Ljava/lang/Runnable;

    .line 87
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v2

    move-object v1, v2

    .line 117
    .local v1, "pipeline":Lcom/sun/prism/GraphicsPipeline;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 118
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/prism/GraphicsPipeline;->dispose()V

    .line 120
    :cond_0
    return-void
.end method

.method public init()V
    .locals 8

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;
    :try_start_0
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->createPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v4

    if-nez v4, :cond_0

    .line 92
    const-string v4, "Error initializing QuantumRenderer: no suitable pipeline found"

    move-object v1, v4

    .line 93
    .local v1, "MSG":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local v1    # "MSG":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 109
    .local v1, "th":Ljava/lang/Throwable;
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;->this$0:Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->access$100(Lcom/sun/javafx/tk/quantum/QuantumRenderer;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;->this$0:Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->access$200(Lcom/sun/javafx/tk/quantum/QuantumRenderer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 112
    .line 113
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/prism/GraphicsPipeline;->getDeviceDetails()Ljava/util/Map;

    move-result-object v4

    move-object v1, v4

    .line 97
    .local v1, "device":Ljava/util/Map;
    move-object v4, v1

    if-nez v4, :cond_1

    .line 98
    new-instance v4, Ljava/util/HashMap;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v1, v4

    .line 100
    :cond_1
    move-object v4, v1

    sget-object v5, Lcom/sun/glass/ui/View$Capability;->kHiDPIAwareKey:Ljava/lang/Object;

    sget-boolean v6, Lcom/sun/prism/impl/PrismSettings;->allowHiDPIScaling:Z

    .line 101
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 100
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 102
    invoke-static {}, Lcom/sun/glass/ui/Application;->getDeviceDetails()Ljava/util/Map;

    move-result-object v4

    move-object v2, v4

    .line 103
    .local v2, "map":Ljava/util/Map;
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 104
    move-object v4, v1

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 106
    :cond_2
    move-object v4, v1

    invoke-static {v4}, Lcom/sun/glass/ui/Application;->setDeviceDetails(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;->this$0:Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->access$200(Lcom/sun/javafx/tk/quantum/QuantumRenderer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 112
    goto :goto_0

    .line 111
    .end local v1    # "device":Ljava/util/Map;
    .end local v2    # "map":Ljava/util/Map;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;->this$0:Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->access$200(Lcom/sun/javafx/tk/quantum/QuantumRenderer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object v4, v3

    throw v4
.end method

.method public run()V
    .locals 3

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;->init()V

    .line 125
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;->work:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;->cleanup()V

    .line 128
    .line 129
    return-void

    .line 127
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;->cleanup()V

    move-object v2, v1

    throw v2
.end method
