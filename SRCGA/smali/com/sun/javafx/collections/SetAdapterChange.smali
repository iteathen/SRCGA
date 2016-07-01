.class public Lcom/sun/javafx/collections/SetAdapterChange;
.super Ljavafx/collections/SetChangeListener$Change;
.source "SetAdapterChange.java"


# annotations
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
.field private final change:Ljavafx/collections/SetChangeListener$Change;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;"
        }
    .end annotation
.end field


# direct methods
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
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetAdapterChange;, "Lcom/sun/javafx/collections/SetAdapterChange<TE;>;"
    move-object v1, p1

    .local v1, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, p2

    .local v2, "change":Ljavafx/collections/SetChangeListener$Change;, "Ljavafx/collections/SetChangeListener$Change<+TE;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/collections/SetChangeListener$Change;-><init>(Ljavafx/collections/ObservableSet;)V

    .line 37
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/collections/SetAdapterChange;->change:Ljavafx/collections/SetChangeListener$Change;

    .line 38
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
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetAdapterChange;, "Lcom/sun/javafx/collections/SetAdapterChange<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/SetAdapterChange;->change:Ljavafx/collections/SetChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/SetChangeListener$Change;->getElementAdded()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/SetAdapterChange;, "Lcom/sun/javafx/collections/SetAdapterChange<TE;>;"
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
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetAdapterChange;, "Lcom/sun/javafx/collections/SetAdapterChange<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/SetAdapterChange;->change:Ljavafx/collections/SetChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/SetChangeListener$Change;->getElementRemoved()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/SetAdapterChange;, "Lcom/sun/javafx/collections/SetAdapterChange<TE;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetAdapterChange;, "Lcom/sun/javafx/collections/SetAdapterChange<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/SetAdapterChange;->change:Ljavafx/collections/SetChangeListener$Change;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/SetAdapterChange;, "Lcom/sun/javafx/collections/SetAdapterChange<TE;>;"
    return-object v0
.end method

.method public wasAdded()Z
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetAdapterChange;, "Lcom/sun/javafx/collections/SetAdapterChange<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/SetAdapterChange;->change:Ljavafx/collections/SetChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/SetChangeListener$Change;->wasAdded()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/SetAdapterChange;, "Lcom/sun/javafx/collections/SetAdapterChange<TE;>;"
    return v0
.end method

.method public wasRemoved()Z
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetAdapterChange;, "Lcom/sun/javafx/collections/SetAdapterChange<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/SetAdapterChange;->change:Ljavafx/collections/SetChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/SetChangeListener$Change;->wasRemoved()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/SetAdapterChange;, "Lcom/sun/javafx/collections/SetAdapterChange<TE;>;"
    return v0
.end method
