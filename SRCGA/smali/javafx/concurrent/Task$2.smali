.class Ljavafx/concurrent/Task$2;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/concurrent/Task;->updateTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/concurrent/Task;


# direct methods
.method constructor <init>(Ljavafx/concurrent/Task;)V
    .locals 4

    .prologue
    .line 1175
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task$2;, "Ljavafx/concurrent/Task$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/concurrent/Task;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/concurrent/Task$2;->this$0:Ljavafx/concurrent/Task;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1177
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task$2;, "Ljavafx/concurrent/Task$2;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task$2;->this$0:Ljavafx/concurrent/Task;

    invoke-static {v2}, Ljavafx/concurrent/Task;->access$500(Ljavafx/concurrent/Task;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 1178
    .local v1, "title":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task$2;->this$0:Ljavafx/concurrent/Task;

    invoke-static {v2}, Ljavafx/concurrent/Task;->access$600(Ljavafx/concurrent/Task;)Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 1179
    return-void
.end method
