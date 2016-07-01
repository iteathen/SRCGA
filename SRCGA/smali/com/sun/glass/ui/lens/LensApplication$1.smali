.class Lcom/sun/glass/ui/lens/LensApplication$1;
.super Ljava/lang/Thread;
.source "LensApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/glass/ui/lens/LensApplication;->runLoop(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/glass/ui/lens/LensApplication;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/lens/LensApplication;)V
    .locals 4

    .prologue
    .line 915
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/lens/LensApplication$1;->this$0:Lcom/sun/glass/ui/lens/LensApplication;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 917
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$1;->this$0:Lcom/sun/glass/ui/lens/LensApplication;

    invoke-virtual {v1}, Lcom/sun/glass/ui/lens/LensApplication;->shutdown()V

    .line 918
    return-void
.end method
