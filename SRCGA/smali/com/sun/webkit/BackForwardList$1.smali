.class Lcom/sun/webkit/BackForwardList$1;
.super Ljava/lang/Object;
.source "BackForwardList.java"

# interfaces
.implements Lcom/sun/webkit/LoadListenerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/webkit/BackForwardList;-><init>(Lcom/sun/webkit/WebPage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/webkit/BackForwardList;


# direct methods
.method constructor <init>(Lcom/sun/webkit/BackForwardList;)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/webkit/BackForwardList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/webkit/BackForwardList$1;->this$0:Lcom/sun/webkit/BackForwardList;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchLoadEvent(JILjava/lang/String;Ljava/lang/String;DI)V
    .locals 12

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList$1;
    move-wide v1, p1

    .local v1, "frame":J
    move v3, p3

    .local v3, "state":I
    move-object/from16 v4, p4

    .local v4, "url":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "contentType":Ljava/lang/String;
    move-wide/from16 v6, p6

    .local v6, "progress":D
    move/from16 v8, p8

    .local v8, "errorCode":I
    move v10, v3

    const/16 v11, 0xe

    if-ne v10, v11, :cond_0

    .line 168
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/webkit/BackForwardList$1;->this$0:Lcom/sun/webkit/BackForwardList;

    invoke-virtual {v10}, Lcom/sun/webkit/BackForwardList;->getCurrentEntry()Lcom/sun/webkit/BackForwardList$Entry;

    move-result-object v10

    move-object v9, v10

    .line 169
    .local v9, "entry":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v10, v9

    if-eqz v10, :cond_0

    .line 170
    move-object v10, v9

    invoke-static {v10}, Lcom/sun/webkit/BackForwardList$Entry;->access$000(Lcom/sun/webkit/BackForwardList$Entry;)V

    .line 173
    .end local v9    # "entry":Lcom/sun/webkit/BackForwardList$Entry;
    :cond_0
    return-void
.end method

.method public dispatchResourceLoadEvent(JILjava/lang/String;Ljava/lang/String;DI)V
    .locals 0
    .param p1, "frame"    # J
    .param p3, "state"    # I
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "progress"    # D
    .param p8, "errorCode"    # I

    .prologue
    .line 181
    return-void
.end method
