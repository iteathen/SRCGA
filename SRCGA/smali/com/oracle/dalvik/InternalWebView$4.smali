.class final Lcom/oracle/dalvik/InternalWebView$4;
.super Ljava/lang/Object;
.source "InternalWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oracle/dalvik/InternalWebView;->createNew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$4;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView$4;
    new-instance v1, Lcom/oracle/dalvik/InternalWebView;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/oracle/dalvik/InternalWebView;-><init>()V

    invoke-virtual {v1}, Lcom/oracle/dalvik/InternalWebView;->getInternalID()I

    move-result v1

    .line 170
    return-void
.end method
