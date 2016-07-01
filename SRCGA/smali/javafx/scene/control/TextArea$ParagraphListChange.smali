.class final Ljavafx/scene/control/TextArea$ParagraphListChange;
.super Lcom/sun/javafx/collections/NonIterableChange;
.source "TextArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TextArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParagraphListChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/NonIterableChange",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private removed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljavafx/collections/ObservableList;IILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphListChange;
    move-object v1, p1

    .local v1, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/CharSequence;>;"
    move v2, p2

    .local v2, "from":I
    move v3, p3

    .local v3, "to":I
    move-object v4, p4

    .local v4, "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    move-object v5, v0

    move v6, v2

    move v7, v3

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/collections/NonIterableChange;-><init>(IILjavafx/collections/ObservableList;)V

    .line 409
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavafx/scene/control/TextArea$ParagraphListChange;->removed:Ljava/util/List;

    .line 410
    return-void
.end method


# virtual methods
.method protected getPermutation()[I
    .locals 2

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphListChange;
    const/4 v1, 0x0

    new-array v1, v1, [I

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea$ParagraphListChange;
    return-object v0
.end method

.method public getRemoved()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphListChange;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea$ParagraphListChange;->removed:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea$ParagraphListChange;
    return-object v0
.end method
