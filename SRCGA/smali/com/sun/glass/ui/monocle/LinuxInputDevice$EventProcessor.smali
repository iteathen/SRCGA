.class Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;
.super Ljava/lang/Object;
.source "LinuxInputDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/monocle/LinuxInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventProcessor"
.end annotation


# instance fields
.field scheduled:Z

.field final synthetic this$0:Lcom/sun/glass/ui/monocle/LinuxInputDevice;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V
    .locals 4

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;->this$0:Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;->this$0:Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    invoke-static {v3}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->access$000(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->startIteration()V

    .line 181
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;->this$0:Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    invoke-static {v3}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->access$100(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)Lcom/sun/glass/ui/monocle/LinuxInputProcessor;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;->this$0:Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    invoke-interface {v3, v4}, Lcom/sun/glass/ui/monocle/LinuxInputProcessor;->processEvents(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .line 185
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;->this$0:Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    invoke-static {v3}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->access$000(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 186
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;->this$0:Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    invoke-static {v3}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->access$000(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->hasNextEvent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;->this$0:Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    invoke-static {v3}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->access$300(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)Lcom/sun/glass/ui/monocle/RunnableProcessor;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;->this$0:Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    invoke-static {v4}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->access$200(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->invokeLater(Ljava/lang/Runnable;)V

    .line 192
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;->this$0:Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    invoke-static {v3}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->access$000(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->compact()V

    .line 193
    move-object v3, v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    return-void

    .line 182
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 183
    .local v1, "e":Ljava/lang/RuntimeException;
    move-object v3, v1

    invoke-static {v3}, Lcom/sun/glass/ui/Application;->reportException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 190
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_0
    move-object v3, v0

    :try_start_2
    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;->this$0:Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    invoke-static {v3}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->access$200(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;->scheduled:Z

    goto :goto_1

    .line 193
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v2

    throw v3
.end method
