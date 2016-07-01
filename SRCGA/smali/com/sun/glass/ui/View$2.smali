.class Lcom/sun/glass/ui/View$2;
.super Lcom/sun/glass/ui/ClipboardAssistance;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/glass/ui/View;->notifyDragEnter(IIIII)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/glass/ui/View;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/View;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1015
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/glass/ui/View;
    move-object v2, p2

    .local v2, "cipboardName":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/glass/ui/View$2;->this$0:Lcom/sun/glass/ui/View;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/ClipboardAssistance;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 5

    .prologue
    .line 1017
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View$2;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Flush is forbidden from target!"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
