.class Lcom/sun/glass/ui/lens/LensTimer$1;
.super Ljava/util/TimerTask;
.source "LensTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/glass/ui/lens/LensTimer;->_start(Ljava/lang/Runnable;I)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/glass/ui/lens/LensTimer;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/lens/LensTimer;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensTimer$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/glass/ui/lens/LensTimer;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/glass/ui/lens/LensTimer$1;->this$0:Lcom/sun/glass/ui/lens/LensTimer;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/glass/ui/lens/LensTimer$1;->val$runnable:Ljava/lang/Runnable;

    move-object v3, v0

    invoke-direct {v3}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensTimer$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensTimer$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 59
    return-void
.end method
