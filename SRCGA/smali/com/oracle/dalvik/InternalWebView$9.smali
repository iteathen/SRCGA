.class final Lcom/oracle/dalvik/InternalWebView$9;
.super Ljava/lang/Object;
.source "InternalWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oracle/dalvik/InternalWebView;->setVisible(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$iwv:Lcom/oracle/dalvik/InternalWebView;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/oracle/dalvik/InternalWebView;Z)V
    .locals 5

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$9;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/oracle/dalvik/InternalWebView$9;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/oracle/dalvik/InternalWebView$9;->val$visible:Z

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$9;
    move-object v1, v0

    iget-object v1, v1, Lcom/oracle/dalvik/InternalWebView$9;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v1}, Lcom/oracle/dalvik/InternalWebView;->access$500(Lcom/oracle/dalvik/InternalWebView;)Landroid/webkit/WebView;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/oracle/dalvik/InternalWebView$9;->val$visible:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 309
    move-object v1, v0

    iget-boolean v1, v1, Lcom/oracle/dalvik/InternalWebView$9;->val$visible:Z

    if-eqz v1, :cond_0

    .line 310
    move-object v1, v0

    iget-object v1, v1, Lcom/oracle/dalvik/InternalWebView$9;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v1}, Lcom/oracle/dalvik/InternalWebView;->access$500(Lcom/oracle/dalvik/InternalWebView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->invalidate()V

    .line 312
    :cond_0
    return-void

    .line 308
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method
