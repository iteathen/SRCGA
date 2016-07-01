.class Lcom/sun/xml/stream/Constants$ArrayEnumeration;
.super Ljava/lang/Object;
.source "Constants.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayEnumeration"
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;

.field private index:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Constants$ArrayEnumeration;
    move-object v1, p1

    .local v1, "array":[Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 553
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/Constants$ArrayEnumeration;->array:[Ljava/lang/Object;

    .line 554
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 3

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Constants$ArrayEnumeration;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/Constants$ArrayEnumeration;->index:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/Constants$ArrayEnumeration;->array:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/Constants$ArrayEnumeration;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/Constants$ArrayEnumeration;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Constants$ArrayEnumeration;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/Constants$ArrayEnumeration;->index:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/Constants$ArrayEnumeration;->array:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 580
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/Constants$ArrayEnumeration;->array:[Ljava/lang/Object;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/xml/stream/Constants$ArrayEnumeration;->index:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/Constants$ArrayEnumeration;->index:I

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/Constants$ArrayEnumeration;
    return-object v0

    .line 582
    .restart local v0    # "this":Lcom/sun/xml/stream/Constants$ArrayEnumeration;
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
