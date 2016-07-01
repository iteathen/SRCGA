.class Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$1;
.super Lcom/sun/glass/ui/ClipboardAssistance;
.source "EmbeddedSceneDnD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->createDragboard(Z)Lcom/sun/javafx/tk/TKClipboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;


# direct methods
.method constructor <init>(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    move-object v2, p2

    .local v2, "cipboardName":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$1;->this$0:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/ClipboardAssistance;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 3

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$1;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/glass/ui/ClipboardAssistance;->flush()V

    .line 141
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$1;->this$0:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->access$000(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;)V

    .line 142
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$1;->this$0:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/Toolkit;->enterNestedEventLoop(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 143
    return-void
.end method
