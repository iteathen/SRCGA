.class Ljavafx/collections/transformation/SortedList$Element;
.super Ljava/lang/Object;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/transformation/SortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Element"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private index:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList$Element;, "Ljavafx/collections/transformation/SortedList$Element<TE;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    move v2, p2

    .local v2, "index":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 259
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/collections/transformation/SortedList$Element;->e:Ljava/lang/Object;

    .line 260
    move-object v3, v0

    move v4, v2

    iput v4, v3, Ljavafx/collections/transformation/SortedList$Element;->index:I

    .line 261
    return-void
.end method

.method static synthetic access$200(Ljavafx/collections/transformation/SortedList$Element;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "x0":Ljavafx/collections/transformation/SortedList$Element;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/transformation/SortedList$Element;->e:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/collections/transformation/SortedList$Element;
    return-object v0
.end method

.method static synthetic access$202(Ljavafx/collections/transformation/SortedList$Element;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "x0":Ljavafx/collections/transformation/SortedList$Element;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/collections/transformation/SortedList$Element;->e:Ljava/lang/Object;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/collections/transformation/SortedList$Element;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/collections/transformation/SortedList$Element;)I
    .locals 2

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "x0":Ljavafx/collections/transformation/SortedList$Element;
    move-object v1, v0

    iget v1, v1, Ljavafx/collections/transformation/SortedList$Element;->index:I

    move v0, v1

    .end local v0    # "x0":Ljavafx/collections/transformation/SortedList$Element;
    return v0
.end method

.method static synthetic access$302(Ljavafx/collections/transformation/SortedList$Element;I)I
    .locals 7

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "x0":Ljavafx/collections/transformation/SortedList$Element;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Ljavafx/collections/transformation/SortedList$Element;->index:I

    move v0, v2

    .end local v0    # "x0":Ljavafx/collections/transformation/SortedList$Element;
    return v0
.end method
