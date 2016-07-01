.class Lcom/sun/glass/ui/monocle/AndroidInputProcessor$1;
.super Ljava/lang/Object;
.source "AndroidInputProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/glass/ui/monocle/AndroidInputProcessor;->dispatchKeyEvent(II[CI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/glass/ui/monocle/AndroidInputProcessor;

.field final synthetic val$chars:[C

.field final synthetic val$key:I

.field final synthetic val$modifiers:I

.field final synthetic val$type:I

.field final synthetic val$view:Lcom/sun/glass/ui/monocle/MonocleView;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/AndroidInputProcessor;Lcom/sun/glass/ui/monocle/MonocleView;II[CI)V
    .locals 9

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputProcessor$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/glass/ui/monocle/AndroidInputProcessor;
    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/sun/glass/ui/monocle/AndroidInputProcessor$1;->this$0:Lcom/sun/glass/ui/monocle/AndroidInputProcessor;

    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/sun/glass/ui/monocle/AndroidInputProcessor$1;->val$view:Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/glass/ui/monocle/AndroidInputProcessor$1;->val$type:I

    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/glass/ui/monocle/AndroidInputProcessor$1;->val$key:I

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/sun/glass/ui/monocle/AndroidInputProcessor$1;->val$chars:[C

    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/sun/glass/ui/monocle/AndroidInputProcessor$1;->val$modifiers:I

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputProcessor$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/AndroidInputProcessor$1;->val$view:Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/AndroidInputProcessor$1;->val$type:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/AndroidInputProcessor$1;->val$key:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/AndroidInputProcessor$1;->val$chars:[C

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/AndroidInputProcessor$1;->val$modifiers:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sun/glass/ui/monocle/MonocleView;->notifyKey(II[CI)V

    .line 70
    return-void
.end method
