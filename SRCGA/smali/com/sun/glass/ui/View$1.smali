.class Lcom/sun/glass/ui/View$1;
.super Lcom/sun/glass/ui/ClipboardAssistance;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/glass/ui/View;->notifyDragStart(IIIII)V
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
    .line 988
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/glass/ui/View;
    move-object v2, p2

    .local v2, "cipboardName":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/glass/ui/View$1;->this$0:Lcom/sun/glass/ui/View;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/ClipboardAssistance;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public actionPerformed(I)V
    .locals 4

    .prologue
    .line 992
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View$1;
    move v1, p1

    .local v1, "performedAction":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/View$1;->this$0:Lcom/sun/glass/ui/View;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/View;->notifyDragEnd(I)V

    .line 993
    return-void
.end method
