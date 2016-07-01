.class Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;
.super Ljavafx/collections/MapChangeListener$Change;
.source "ObservableMapWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/ObservableMapWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/collections/MapChangeListener$Change",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final added:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final old:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

.field private final wasAdded:Z

.field private final wasRemoved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/sun/javafx/collections/ObservableMapWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sun/javafx/collections/ObservableMapWrapper;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;ZZ)V"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.SimpleChange;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "key":Ljava/lang/Object;, "TK;"
    move-object v3, p3

    .local v3, "old":Ljava/lang/Object;, "TV;"
    move-object v4, p4

    .local v4, "added":Ljava/lang/Object;, "TV;"
    move v5, p5

    .local v5, "wasAdded":Z
    move/from16 v6, p6

    .local v6, "wasRemoved":Z
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    .line 62
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Ljavafx/collections/MapChangeListener$Change;-><init>(Ljavafx/collections/ObservableMap;)V

    .line 63
    sget-boolean v7, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    move v7, v5

    if-nez v7, :cond_0

    move v7, v6

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 64
    :cond_0
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->key:Ljava/lang/Object;

    .line 65
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->old:Ljava/lang/Object;

    .line 66
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->added:Ljava/lang/Object;

    .line 67
    move-object v7, v0

    move v8, v5

    iput-boolean v8, v7, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->wasAdded:Z

    .line 68
    move-object v7, v0

    move v8, v6

    iput-boolean v8, v7, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->wasRemoved:Z

    .line 69
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
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.SimpleChange;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->key:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.SimpleChange;"
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
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.SimpleChange;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->added:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.SimpleChange;"
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
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.SimpleChange;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->old:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.SimpleChange;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.SimpleChange;"
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 99
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->wasAdded:Z

    if-eqz v2, :cond_1

    .line 100
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->wasRemoved:Z

    if-eqz v2, :cond_0

    .line 101
    move-object v2, v1

    const-string v3, "replaced "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->old:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->added:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 108
    :goto_0
    move-object v2, v1

    const-string v3, " at key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 109
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.SimpleChange;"
    return-object v0

    .line 103
    .restart local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.SimpleChange;"
    :cond_0
    move-object v2, v1

    const-string v3, "added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->added:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0

    .line 106
    :cond_1
    move-object v2, v1

    const-string v3, "removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->old:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0
.end method

.method public wasAdded()Z
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.SimpleChange;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->wasAdded:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.SimpleChange;"
    return v0
.end method

.method public wasRemoved()Z
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.SimpleChange;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;->wasRemoved:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.SimpleChange;"
    return v0
.end method
