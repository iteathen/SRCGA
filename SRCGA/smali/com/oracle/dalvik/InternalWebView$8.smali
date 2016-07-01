.class final Lcom/oracle/dalvik/InternalWebView$8;
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

.field final synthetic val$move:Z

.field final synthetic val$resize:Z


# direct methods
.method constructor <init>(ZLcom/oracle/dalvik/InternalWebView;Z)V
    .locals 6

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$8;
    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/oracle/dalvik/InternalWebView$8;->val$move:Z

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/oracle/dalvik/InternalWebView$8;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lcom/oracle/dalvik/InternalWebView$8;->val$resize:Z

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$8;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/oracle/dalvik/InternalWebView$8;->val$move:Z

    if-eqz v2, :cond_0

    .line 281
    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView$8;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    .line 282
    invoke-static {v2}, Lcom/oracle/dalvik/InternalWebView;->access$500(Lcom/oracle/dalvik/InternalWebView;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    move-object v1, v2

    .line 283
    .local v1, "layout":Landroid/widget/FrameLayout$LayoutParams;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/oracle/dalvik/InternalWebView$8;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v3}, Lcom/oracle/dalvik/InternalWebView;->access$1100(Lcom/oracle/dalvik/InternalWebView;)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 284
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/oracle/dalvik/InternalWebView$8;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v3}, Lcom/oracle/dalvik/InternalWebView;->access$1200(Lcom/oracle/dalvik/InternalWebView;)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 285
    invoke-static {}, Ljavafxports/android/FXActivity;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/oracle/dalvik/InternalWebView$8;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v3}, Lcom/oracle/dalvik/InternalWebView;->access$500(Lcom/oracle/dalvik/InternalWebView;)Landroid/webkit/WebView;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    .end local v1    # "layout":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/oracle/dalvik/InternalWebView$8;->val$move:Z

    if-nez v2, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/oracle/dalvik/InternalWebView$8;->val$resize:Z

    if-eqz v2, :cond_2

    .line 290
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView$8;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v2}, Lcom/oracle/dalvik/InternalWebView;->access$500(Lcom/oracle/dalvik/InternalWebView;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    .line 292
    :cond_2
    return-void
.end method
