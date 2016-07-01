.class Lcom/sun/glass/ui/monocle/MonocleApplication$1;
.super Ljava/lang/Thread;
.source "MonocleApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/glass/ui/monocle/MonocleApplication;->runLoop(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/glass/ui/monocle/MonocleApplication;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/MonocleApplication;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/MonocleApplication$1;->this$0:Lcom/sun/glass/ui/monocle/MonocleApplication;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MonocleApplication$1;->this$0:Lcom/sun/glass/ui/monocle/MonocleApplication;

    invoke-static {v1}, Lcom/sun/glass/ui/monocle/MonocleApplication;->access$000(Lcom/sun/glass/ui/monocle/MonocleApplication;)Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/NativePlatform;->shutdown()V

    .line 127
    return-void
.end method
