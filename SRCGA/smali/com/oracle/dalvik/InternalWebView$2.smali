.class Lcom/oracle/dalvik/InternalWebView$2;
.super Landroid/webkit/WebViewClient;
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
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/oracle/dalvik/InternalWebView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oracle/dalvik/InternalWebView$2;->this$0:Lcom/oracle/dalvik/InternalWebView;

    move-object v2, v0

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$2;
    move-object v1, p1

    .local v1, "view":Landroid/webkit/WebView;
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/oracle/dalvik/InternalWebView$2;->this$0:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v3}, Lcom/oracle/dalvik/InternalWebView;->access$200(Lcom/oracle/dalvik/InternalWebView;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    move-object v3, v0

    iget-object v3, v3, Lcom/oracle/dalvik/InternalWebView$2;->this$0:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v3}, Lcom/oracle/dalvik/InternalWebView;->access$500(Lcom/oracle/dalvik/InternalWebView;)Landroid/webkit/WebView;

    move-result-object v3

    const-string v4, "javascript:window.HTMLOUT.processHTML(\'<head>\'+document.getElementsByTagName(\'html\')[0].innerHTML+\'</head>\');"

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 110
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/oracle/dalvik/InternalWebView$2;->this$0:Lcom/oracle/dalvik/InternalWebView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/oracle/dalvik/InternalWebView;->access$202(Lcom/oracle/dalvik/InternalWebView;Z)Z

    move-result v3

    .line 111
    move-object v3, v0

    iget-object v3, v3, Lcom/oracle/dalvik/InternalWebView$2;->this$0:Lcom/oracle/dalvik/InternalWebView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/oracle/dalvik/InternalWebView$2;->this$0:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v7}, Lcom/oracle/dalvik/InternalWebView;->access$300(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static/range {v3 .. v9}, Lcom/oracle/dalvik/InternalWebView;->access$400(Lcom/oracle/dalvik/InternalWebView;IILjava/lang/String;Ljava/lang/String;II)V

    .line 112
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 11

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$2;
    move-object v1, p1

    .local v1, "view":Landroid/webkit/WebView;
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move-object v3, p3

    .local v3, "favicon":Landroid/graphics/Bitmap;
    move-object v4, v0

    iget-object v4, v4, Lcom/oracle/dalvik/InternalWebView$2;->this$0:Lcom/oracle/dalvik/InternalWebView;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/oracle/dalvik/InternalWebView;->access$202(Lcom/oracle/dalvik/InternalWebView;Z)Z

    move-result v4

    .line 102
    move-object v4, v0

    iget-object v4, v4, Lcom/oracle/dalvik/InternalWebView$2;->this$0:Lcom/oracle/dalvik/InternalWebView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/oracle/dalvik/InternalWebView$2;->this$0:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v8}, Lcom/oracle/dalvik/InternalWebView;->access$300(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static/range {v4 .. v10}, Lcom/oracle/dalvik/InternalWebView;->access$400(Lcom/oracle/dalvik/InternalWebView;IILjava/lang/String;Ljava/lang/String;II)V

    .line 103
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$2;
    move-object v1, p1

    .local v1, "view":Landroid/webkit/WebView;
    move v2, p2

    .local v2, "errorCode":I
    move-object v3, p3

    .local v3, "description":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "failingUrl":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/oracle/dalvik/InternalWebView$2;->this$0:Lcom/oracle/dalvik/InternalWebView;

    const/4 v6, 0x0

    const/4 v7, 0x5

    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Lcom/oracle/dalvik/InternalWebView$2;->this$0:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v9}, Lcom/oracle/dalvik/InternalWebView;->access$300(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    move v11, v2

    invoke-static/range {v5 .. v11}, Lcom/oracle/dalvik/InternalWebView;->access$400(Lcom/oracle/dalvik/InternalWebView;IILjava/lang/String;Ljava/lang/String;II)V

    .line 117
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$2;
    move-object v1, p1

    .local v1, "view":Landroid/webkit/WebView;
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 96
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/oracle/dalvik/InternalWebView$2;
    return v0
.end method
