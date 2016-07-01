.class Lcom/oracle/dalvik/InternalWebView$3;
.super Landroid/webkit/WebChromeClient;
.source "InternalWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oracle/dalvik/InternalWebView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oracle/dalvik/InternalWebView;


# direct methods
.method constructor <init>(Lcom/oracle/dalvik/InternalWebView;)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/oracle/dalvik/InternalWebView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oracle/dalvik/InternalWebView$3;->this$0:Lcom/oracle/dalvik/InternalWebView;

    move-object v2, v0

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 10

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$3;
    move-object v1, p1

    .local v1, "view":Landroid/webkit/WebView;
    move v2, p2

    .local v2, "newProgress":I
    move-object v3, v0

    iget-object v3, v3, Lcom/oracle/dalvik/InternalWebView$3;->this$0:Lcom/oracle/dalvik/InternalWebView;

    const/4 v4, 0x0

    const/16 v5, 0x1e

    move-object v6, v0

    iget-object v6, v6, Lcom/oracle/dalvik/InternalWebView$3;->this$0:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v6}, Lcom/oracle/dalvik/InternalWebView;->access$600(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/oracle/dalvik/InternalWebView$3;->this$0:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v7}, Lcom/oracle/dalvik/InternalWebView;->access$300(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v7

    move v8, v2

    const/4 v9, -0x1

    invoke-static/range {v3 .. v9}, Lcom/oracle/dalvik/InternalWebView;->access$400(Lcom/oracle/dalvik/InternalWebView;IILjava/lang/String;Ljava/lang/String;II)V

    .line 124
    return-void
.end method
