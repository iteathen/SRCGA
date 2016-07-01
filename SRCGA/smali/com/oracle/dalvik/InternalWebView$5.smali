.class final Lcom/oracle/dalvik/InternalWebView$5;
.super Ljava/lang/Object;
.source "InternalWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oracle/dalvik/InternalWebView;->loadUrl(ILjava/lang/String;)V
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
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$5;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oracle/dalvik/InternalWebView$5;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$5;
    invoke-static {}, Ljavafxports/android/FXActivity;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v1, v2

    .line 182
    .local v1, "c":I
    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView$5;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v2}, Lcom/oracle/dalvik/InternalWebView;->access$500(Lcom/oracle/dalvik/InternalWebView;)Landroid/webkit/WebView;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/oracle/dalvik/InternalWebView$5;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v3}, Lcom/oracle/dalvik/InternalWebView;->access$600(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 183
    return-void
.end method
