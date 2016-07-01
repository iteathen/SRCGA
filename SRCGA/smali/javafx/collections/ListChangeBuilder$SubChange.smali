.class Ljavafx/collections/ListChangeBuilder$SubChange;
.super Ljava/lang/Object;
.source "ListChangeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/ListChangeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubChange"
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
.field from:I

.field perm:[I

.field removed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field to:I

.field updated:Z


# direct methods
.method public constructor <init>(IILjava/util/List;[IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<TE;>;[IZ)V"
        }
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v3, p3

    .local v3, "removed":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v4, p4

    .local v4, "perm":[I
    move v5, p5

    .local v5, "updated":Z
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 184
    move-object v6, v0

    move v7, v1

    iput v7, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    .line 185
    move-object v6, v0

    move v7, v2

    iput v7, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    .line 186
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    .line 187
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->perm:[I

    .line 188
    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->updated:Z

    .line 189
    return-void
.end method
