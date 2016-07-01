.class Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;
.super Ljavafx/collections/SetChangeListener$Change;
.source "ObservableSetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/ObservableSetWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleAddChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/collections/SetChangeListener$Change",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final added:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sun/javafx/collections/ObservableSetWrapper;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/collections/ObservableSetWrapper;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>.SimpleAddChange;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "added":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;->this$0:Lcom/sun/javafx/collections/ObservableSetWrapper;

    .line 60
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/collections/SetChangeListener$Change;-><init>(Ljavafx/collections/ObservableSet;)V

    .line 61
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;->added:Ljava/lang/Object;

    .line 62
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
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>.SimpleAddChange;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;->added:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>.SimpleAddChange;"
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
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>.SimpleAddChange;"
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>.SimpleAddChange;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>.SimpleAddChange;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "added "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;->added:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>.SimpleAddChange;"
    return-object v0
.end method

.method public wasAdded()Z
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>.SimpleAddChange;"
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>.SimpleAddChange;"
    return v0
.end method

.method public wasRemoved()Z
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>.SimpleAddChange;"
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>.SimpleAddChange;"
    return v0
.end method
