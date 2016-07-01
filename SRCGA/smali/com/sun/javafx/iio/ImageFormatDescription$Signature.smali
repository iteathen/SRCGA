.class public final Lcom/sun/javafx/iio/ImageFormatDescription$Signature;
.super Ljava/lang/Object;
.source "ImageFormatDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/iio/ImageFormatDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Signature"
.end annotation


# instance fields
.field private final bytes:[B


# direct methods
.method public varargs constructor <init>([B)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageFormatDescription$Signature;
    move-object v1, p1

    .local v1, "bytes":[B
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 75
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;->bytes:[B

    .line 76
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageFormatDescription$Signature;
    move-object v1, p1

    .local v1, "other":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 104
    const/4 v2, 0x1

    move v0, v2

    .line 111
    .end local v0    # "this":Lcom/sun/javafx/iio/ImageFormatDescription$Signature;
    :goto_0
    return v0

    .line 107
    .restart local v0    # "this":Lcom/sun/javafx/iio/ImageFormatDescription$Signature;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    if-nez v2, :cond_1

    .line 108
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 111
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;->bytes:[B

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    iget-object v3, v3, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;->bytes:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageFormatDescription$Signature;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;->bytes:[B

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/ImageFormatDescription$Signature;
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageFormatDescription$Signature;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;->bytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/ImageFormatDescription$Signature;
    return v0
.end method

.method public matches([B)Z
    .locals 6

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageFormatDescription$Signature;
    move-object v1, p1

    .local v1, "streamBytes":[B
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;->bytes:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 84
    const/4 v3, 0x0

    move v0, v3

    .line 93
    .end local v0    # "this":Lcom/sun/javafx/iio/ImageFormatDescription$Signature;
    :goto_0
    return v0

    .line 87
    .restart local v0    # "this":Lcom/sun/javafx/iio/ImageFormatDescription$Signature;
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;->bytes:[B

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 88
    move-object v3, v1

    move v4, v2

    aget-byte v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;->bytes:[B

    move v5, v2

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_1

    .line 89
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 87
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method
