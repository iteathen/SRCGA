.class final Lcom/oracle/dalvik/InternalWebView$6;
.super Ljava/lang/Object;
.source "InternalWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oracle/dalvik/InternalWebView;->loadContent(ILjava/lang/String;Ljava/lang/String;)V
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
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$6;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oracle/dalvik/InternalWebView$6;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$6;
    move-object v1, v0

    iget-object v1, v1, Lcom/oracle/dalvik/InternalWebView$6;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v1}, Lcom/oracle/dalvik/InternalWebView;->access$500(Lcom/oracle/dalvik/InternalWebView;)Landroid/webkit/WebView;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView$6;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v2}, Lcom/oracle/dalvik/InternalWebView;->access$700(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/oracle/dalvik/InternalWebView$6;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v3}, Lcom/oracle/dalvik/InternalWebView;->access$300(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/oracle/dalvik/InternalWebView$6;->val$iwv:Lcom/oracle/dalvik/InternalWebView;

    invoke-static {v4}, Lcom/oracle/dalvik/InternalWebView;->access$800(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method
