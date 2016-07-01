.class Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;
.super Ljava/lang/Object;
.source "AugmentationsImpl.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmallContainerKeyEnumeration"
.end annotation


# instance fields
.field enumArray:[Ljava/lang/Object;

.field next:I

.field final synthetic this$1:Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;


# direct methods
.method constructor <init>(Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;)V
    .locals 8

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;
    move-object v1, p1

    .local v1, "this$1":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->this$1:Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 255
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->this$1:Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;

    iget v4, v4, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, v3, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->enumArray:[Ljava/lang/Object;

    .line 256
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->next:I

    .line 259
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    iget v4, v4, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    if-ge v3, v4, :cond_0

    .line 260
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->enumArray:[Ljava/lang/Object;

    move v4, v2

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v6, v2

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 3

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->next:I

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->enumArray:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;
    return v0

    .restart local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;
    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->next:I

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->enumArray:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 270
    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 273
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->enumArray:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->next:I

    aget-object v2, v2, v3

    move-object v1, v2

    .line 274
    .local v1, "nextVal":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->enumArray:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->next:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 275
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->next:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->next:I

    .line 277
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;
    return-object v0
.end method
