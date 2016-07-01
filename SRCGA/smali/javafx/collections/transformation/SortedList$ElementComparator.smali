.class Ljavafx/collections/transformation/SortedList$ElementComparator;
.super Ljava/lang/Object;
.source "SortedList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/transformation/SortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ElementComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljavafx/collections/transformation/SortedList$Element",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList$ElementComparator;, "Ljavafx/collections/transformation/SortedList$ElementComparator<TE;>;"
    move-object v1, p1

    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 272
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/collections/transformation/SortedList$ElementComparator;->comparator:Ljava/util/Comparator;

    .line 273
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList$ElementComparator;, "Ljavafx/collections/transformation/SortedList$ElementComparator<TE;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljavafx/collections/transformation/SortedList$Element;

    move-object v5, v2

    check-cast v5, Ljavafx/collections/transformation/SortedList$Element;

    invoke-virtual {v3, v4, v5}, Ljavafx/collections/transformation/SortedList$ElementComparator;->compare(Ljavafx/collections/transformation/SortedList$Element;Ljavafx/collections/transformation/SortedList$Element;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljavafx/collections/transformation/SortedList$ElementComparator;, "Ljavafx/collections/transformation/SortedList$ElementComparator<TE;>;"
    return v0
.end method

.method public compare(Ljavafx/collections/transformation/SortedList$Element;Ljavafx/collections/transformation/SortedList$Element;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/transformation/SortedList$Element",
            "<TE;>;",
            "Ljavafx/collections/transformation/SortedList$Element",
            "<TE;>;)I"
        }
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList$ElementComparator;, "Ljavafx/collections/transformation/SortedList$ElementComparator<TE;>;"
    move-object v1, p1

    .local v1, "o1":Ljavafx/collections/transformation/SortedList$Element;, "Ljavafx/collections/transformation/SortedList$Element<TE;>;"
    move-object v2, p2

    .local v2, "o2":Ljavafx/collections/transformation/SortedList$Element;, "Ljavafx/collections/transformation/SortedList$Element<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/transformation/SortedList$ElementComparator;->comparator:Ljava/util/Comparator;

    move-object v4, v1

    invoke-static {v4}, Ljavafx/collections/transformation/SortedList$Element;->access$200(Ljavafx/collections/transformation/SortedList$Element;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    invoke-static {v5}, Ljavafx/collections/transformation/SortedList$Element;->access$200(Ljavafx/collections/transformation/SortedList$Element;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljavafx/collections/transformation/SortedList$ElementComparator;, "Ljavafx/collections/transformation/SortedList$ElementComparator<TE;>;"
    return v0
.end method
