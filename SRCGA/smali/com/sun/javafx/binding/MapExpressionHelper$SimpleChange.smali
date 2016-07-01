.class public Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;
.super Ljavafx/collections/MapChangeListener$Change;
.source "MapExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/MapExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/MapChangeListener$Change",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private addOp:Z

.field private added:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private old:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private removeOp:Z


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "set":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/collections/MapChangeListener$Change;-><init>(Ljavafx/collections/ObservableMap;)V

    .line 651
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableMap;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 654
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "set":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, p2

    .local v2, "source":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+TK;+TV;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/collections/MapChangeListener$Change;-><init>(Ljavafx/collections/ObservableMap;)V

    .line 655
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->key:Ljava/lang/Object;

    .line 656
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/collections/MapChangeListener$Change;->getValueRemoved()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    .line 657
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/collections/MapChangeListener$Change;->getValueAdded()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    .line 658
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/collections/MapChangeListener$Change;->wasAdded()Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->addOp:Z

    .line 659
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/collections/MapChangeListener$Change;->wasRemoved()Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->removeOp:Z

    .line 660
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 701
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->key:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    return-object v0
.end method

.method public getValueAdded()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 706
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    return-object v0
.end method

.method public getValueRemoved()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 711
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    return-object v0
.end method

.method public setAdded(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, p2

    .local v2, "added":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->key:Ljava/lang/Object;

    .line 673
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    .line 674
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    .line 675
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->addOp:Z

    .line 676
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->removeOp:Z

    .line 677
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    return-object v0
.end method

.method public setPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 681
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, p2

    .local v2, "old":Ljava/lang/Object;, "TV;"
    move-object v3, p3

    .local v3, "added":Ljava/lang/Object;, "TV;"
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->key:Ljava/lang/Object;

    .line 682
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    .line 683
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    .line 684
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->addOp:Z

    .line 685
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->removeOp:Z

    .line 686
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    return-object v0
.end method

.method public setRemoved(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, p2

    .local v2, "old":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->key:Ljava/lang/Object;

    .line 664
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    .line 665
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    .line 666
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->addOp:Z

    .line 667
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->removeOp:Z

    .line 668
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 717
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->addOp:Z

    if-eqz v2, :cond_1

    .line 718
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->removeOp:Z

    if-eqz v2, :cond_0

    .line 719
    move-object v2, v1

    const-string v3, "replaced "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 726
    :goto_0
    move-object v2, v1

    const-string v3, " at key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 727
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    return-object v0

    .line 721
    .restart local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    :cond_0
    move-object v2, v1

    const-string v3, "added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0

    .line 724
    :cond_1
    move-object v2, v1

    const-string v3, "removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0
.end method

.method public wasAdded()Z
    .locals 2

    .prologue
    .line 691
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->addOp:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    return v0
.end method

.method public wasRemoved()Z
    .locals 2

    .prologue
    .line 696
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->removeOp:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    return v0
.end method
