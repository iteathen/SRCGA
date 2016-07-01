.class public final Lcom/sun/javafx/collections/UnmodifiableListSet;
.super Ljava/util/AbstractSet;
.source "UnmodifiableListSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private backingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/UnmodifiableListSet;, "Lcom/sun/javafx/collections/UnmodifiableListSet<TE;>;"
    move-object v1, p1

    .local v1, "backingList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/util/AbstractSet;-><init>()V

    .line 45
    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 46
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/UnmodifiableListSet;->backingList:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/UnmodifiableListSet;, "Lcom/sun/javafx/collections/UnmodifiableListSet<TE;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/UnmodifiableListSet;->backingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    .line 58
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    new-instance v2, Lcom/sun/javafx/collections/UnmodifiableListSet$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/collections/UnmodifiableListSet$1;-><init>(Lcom/sun/javafx/collections/UnmodifiableListSet;Ljava/util/Iterator;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/UnmodifiableListSet;, "Lcom/sun/javafx/collections/UnmodifiableListSet<TE;>;"
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/UnmodifiableListSet;, "Lcom/sun/javafx/collections/UnmodifiableListSet<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/UnmodifiableListSet;->backingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/UnmodifiableListSet;, "Lcom/sun/javafx/collections/UnmodifiableListSet<TE;>;"
    return v0
.end method
