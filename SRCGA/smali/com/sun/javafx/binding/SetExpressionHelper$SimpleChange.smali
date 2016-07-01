.class public Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;
.super Ljavafx/collections/SetChangeListener$Change;
.source "SetExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SetExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/SetChangeListener$Change",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private addOp:Z

.field private added:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private old:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    move-object v1, p1

    .local v1, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/collections/SetChangeListener$Change;-><init>(Ljavafx/collections/ObservableSet;)V

    .line 630
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableSet;Ljavafx/collections/SetChangeListener$Change;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    move-object v1, p1

    .local v1, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, p2

    .local v2, "source":Ljavafx/collections/SetChangeListener$Change;, "Ljavafx/collections/SetChangeListener$Change<+TE;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/collections/SetChangeListener$Change;-><init>(Ljavafx/collections/ObservableSet;)V

    .line 634
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/collections/SetChangeListener$Change;->getElementRemoved()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    .line 635
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/collections/SetChangeListener$Change;->getElementAdded()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    .line 636
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/collections/SetChangeListener$Change;->wasAdded()Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->addOp:Z

    .line 637
    return-void
.end method


# virtual methods
.method public getElementAdded()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 665
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    return-object v0
.end method

.method public getElementRemoved()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    return-object v0
.end method

.method public setAdded(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 647
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    move-object v1, p1

    .local v1, "added":Ljava/lang/Object;, "TE;"
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    .line 648
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    .line 649
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->addOp:Z

    .line 650
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    return-object v0
.end method

.method public setRemoved(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    move-object v1, p1

    .local v1, "old":Ljava/lang/Object;, "TE;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    .line 641
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    .line 642
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->addOp:Z

    .line 643
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 675
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->addOp:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "added "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public wasAdded()Z
    .locals 2

    .prologue
    .line 655
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->addOp:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    return v0
.end method

.method public wasRemoved()Z
    .locals 2

    .prologue
    .line 660
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->addOp:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
