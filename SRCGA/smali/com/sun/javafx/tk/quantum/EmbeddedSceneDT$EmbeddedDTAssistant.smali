.class Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$EmbeddedDTAssistant;
.super Lcom/sun/glass/ui/ClipboardAssistance;
.source "EmbeddedSceneDT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmbeddedDTAssistant"
.end annotation


# instance fields
.field private dragSource:Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;


# direct methods
.method constructor <init>(Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;)V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$EmbeddedDTAssistant;
    move-object v1, p1

    .local v1, "source":Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;
    move-object v2, v0

    const-string v3, "DND-Embedded"

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/ClipboardAssistance;-><init>(Ljava/lang/String;)V

    .line 127
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$EmbeddedDTAssistant;->dragSource:Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;

    .line 128
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$EmbeddedDTAssistant;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$EmbeddedDTAssistant;
    move-object v1, p1

    .local v1, "mimeType":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$EmbeddedDTAssistant;->dragSource:Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$EmbeddedDTAssistant;
    return-object v0
.end method

.method public getMimeTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$EmbeddedDTAssistant;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$EmbeddedDTAssistant;->dragSource:Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;

    invoke-interface {v1}, Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;->getMimeTypes()[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$EmbeddedDTAssistant;
    return-object v0
.end method

.method public getSupportedSourceActions()I
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$EmbeddedDTAssistant;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$EmbeddedDTAssistant;->dragSource:Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;

    invoke-interface {v1}, Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;->getSupportedActions()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->transferModesToClipboardActions(Ljava/util/Set;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$EmbeddedDTAssistant;
    return v0
.end method

.method public setTargetAction(I)V
    .locals 5

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$EmbeddedDTAssistant;
    move v1, p1

    .local v1, "actionDone":I
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method
