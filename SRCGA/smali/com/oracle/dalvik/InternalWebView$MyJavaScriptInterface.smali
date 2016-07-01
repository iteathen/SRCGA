.class Lcom/oracle/dalvik/InternalWebView$MyJavaScriptInterface;
.super Ljava/lang/Object;
.source "InternalWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oracle/dalvik/InternalWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyJavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oracle/dalvik/InternalWebView;


# direct methods
.method constructor <init>(Lcom/oracle/dalvik/InternalWebView;)V
    .locals 4

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$MyJavaScriptInterface;
    move-object v1, p1

    .local v1, "this$0":Lcom/oracle/dalvik/InternalWebView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oracle/dalvik/InternalWebView$MyJavaScriptInterface;->this$0:Lcom/oracle/dalvik/InternalWebView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processHTML(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$MyJavaScriptInterface;
    move-object v1, p1

    .local v1, "html":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView$MyJavaScriptInterface;->this$0:Lcom/oracle/dalvik/InternalWebView;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/oracle/dalvik/InternalWebView;->access$1302(Lcom/oracle/dalvik/InternalWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView$MyJavaScriptInterface;->this$0:Lcom/oracle/dalvik/InternalWebView;

    const/4 v3, 0x0

    const/16 v4, 0xe

    move-object v5, v0

    iget-object v5, v5, Lcom/oracle/dalvik/InternalWebView$MyJavaScriptInterface;->this$0:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v5}, Lcom/oracle/dalvik/InternalWebView;->access$600(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/oracle/dalvik/InternalWebView$MyJavaScriptInterface;->this$0:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v6}, Lcom/oracle/dalvik/InternalWebView;->access$300(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static/range {v2 .. v8}, Lcom/oracle/dalvik/InternalWebView;->access$400(Lcom/oracle/dalvik/InternalWebView;IILjava/lang/String;Ljava/lang/String;II)V

    .line 363
    return-void
.end method
