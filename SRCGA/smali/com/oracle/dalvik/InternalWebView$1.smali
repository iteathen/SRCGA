.class Lcom/oracle/dalvik/InternalWebView$1;
.super Landroid/webkit/WebView;
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
.method constructor <init>(Lcom/oracle/dalvik/InternalWebView;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/oracle/dalvik/InternalWebView;
    move-object v2, p2

    .local v2, "x0":Landroid/content/Context;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/oracle/dalvik/InternalWebView$1;->this$0:Lcom/oracle/dalvik/InternalWebView;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$1;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/oracle/dalvik/InternalWebView$1;->this$0:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v4}, Lcom/oracle/dalvik/InternalWebView;->access$000(Lcom/oracle/dalvik/InternalWebView;)I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/oracle/dalvik/InternalWebView$1;->this$0:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v5}, Lcom/oracle/dalvik/InternalWebView;->access$100(Lcom/oracle/dalvik/InternalWebView;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/oracle/dalvik/InternalWebView$1;->setMeasuredDimension(II)V

    .line 90
    return-void
.end method
