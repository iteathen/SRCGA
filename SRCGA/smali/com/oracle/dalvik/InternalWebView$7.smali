.class final Lcom/oracle/dalvik/InternalWebView$7;
.super Ljava/lang/Object;
.source "InternalWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oracle/dalvik/InternalWebView;->moveAndResize(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$iwv:Lcom/oracle/dalvik/InternalWebView;


# direct methods
.method constructor <init>(Lcom/oracle/dalvik/InternalWebView;)V
    .locals 4

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$7;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$7;
    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v2}, Lcom/oracle/dalvik/InternalWebView;->access$900(Lcom/oracle/dalvik/InternalWebView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v2}, Lcom/oracle/dalvik/InternalWebView;->access$1000(Lcom/oracle/dalvik/InternalWebView;)V

    .line 251
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v1, v2

    .line 255
    .local v1, "layout":Landroid/widget/FrameLayout$LayoutParams;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v3}, Lcom/oracle/dalvik/InternalWebView;->access$1100(Lcom/oracle/dalvik/InternalWebView;)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 256
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v3}, Lcom/oracle/dalvik/InternalWebView;->access$1200(Lcom/oracle/dalvik/InternalWebView;)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 259
    invoke-static {}, Ljavafxports/android/FXActivity;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v3}, Lcom/oracle/dalvik/InternalWebView;->access$500(Lcom/oracle/dalvik/InternalWebView;)Landroid/webkit/WebView;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    const-string v2, "InternalWebView"

    const-string v3, "WebView added to ViewGroup [x: %d, y: %d , w: %d h: %d]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    .line 261
    invoke-static {v7}, Lcom/oracle/dalvik/InternalWebView;->access$1100(Lcom/oracle/dalvik/InternalWebView;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v7}, Lcom/oracle/dalvik/InternalWebView;->access$1200(Lcom/oracle/dalvik/InternalWebView;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    move-object v7, v0

    iget-object v7, v7, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v7}, Lcom/oracle/dalvik/InternalWebView;->access$000(Lcom/oracle/dalvik/InternalWebView;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x3

    move-object v7, v0

    iget-object v7, v7, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v7}, Lcom/oracle/dalvik/InternalWebView;->access$100(Lcom/oracle/dalvik/InternalWebView;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 260
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 262
    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v2}, Lcom/oracle/dalvik/InternalWebView;->access$300(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v2}, Lcom/oracle/dalvik/InternalWebView;->access$300(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 263
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    const-string v3, "text/html"

    invoke-static {v2, v3}, Lcom/oracle/dalvik/InternalWebView;->access$302(Lcom/oracle/dalvik/InternalWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v2}, Lcom/oracle/dalvik/InternalWebView;->access$600(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v2}, Lcom/oracle/dalvik/InternalWebView;->access$600(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 266
    const-string v2, "InternalWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v4}, Lcom/oracle/dalvik/InternalWebView;->access$600(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 267
    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v2}, Lcom/oracle/dalvik/InternalWebView;->access$500(Lcom/oracle/dalvik/InternalWebView;)Landroid/webkit/WebView;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v3}, Lcom/oracle/dalvik/InternalWebView;->access$600(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 273
    :cond_3
    :goto_0
    return-void

    .line 268
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v2}, Lcom/oracle/dalvik/InternalWebView;->access$700(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 269
    const-string v2, "InternalWebView"

    const-string v3, "Loading content: %s\ncontent type: %s\nencoding: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    .line 270
    invoke-static {v7}, Lcom/oracle/dalvik/InternalWebView;->access$700(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v7}, Lcom/oracle/dalvik/InternalWebView;->access$300(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    move-object v7, v0

    iget-object v7, v7, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v7}, Lcom/oracle/dalvik/InternalWebView;->access$800(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 269
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 271
    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v2}, Lcom/oracle/dalvik/InternalWebView;->access$500(Lcom/oracle/dalvik/InternalWebView;)Landroid/webkit/WebView;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v3}, Lcom/oracle/dalvik/InternalWebView;->access$700(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v4}, Lcom/oracle/dalvik/InternalWebView;->access$300(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/oracle/dalvik/InternalWebView$7;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v5}, Lcom/oracle/dalvik/InternalWebView;->access$800(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
