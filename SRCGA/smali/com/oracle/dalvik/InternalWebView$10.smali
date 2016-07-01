.class final Lcom/oracle/dalvik/InternalWebView$10;
.super Ljava/lang/Object;
.source "InternalWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oracle/dalvik/InternalWebView;->dispose(I)V
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
    .line 320
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$10;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oracle/dalvik/InternalWebView$10;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$10;
    move-object v1, v0

    iget-object v1, v1, Lcom/oracle/dalvik/InternalWebView$10;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v1}, Lcom/oracle/dalvik/InternalWebView;->access$500(Lcom/oracle/dalvik/InternalWebView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 323
    move-object v1, v0

    iget-object v1, v1, Lcom/oracle/dalvik/InternalWebView$10;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v1}, Lcom/oracle/dalvik/InternalWebView;->access$500(Lcom/oracle/dalvik/InternalWebView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 324
    return-void
.end method
