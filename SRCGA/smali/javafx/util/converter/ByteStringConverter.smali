.class public Ljavafx/util/converter/ByteStringConverter;
.super Ljavafx/util/StringConverter;
.source "ByteStringConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/util/StringConverter",
        "<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/ByteStringConverter;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/util/StringConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/ByteStringConverter;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 40
    const/4 v2, 0x0

    move-object v0, v2

    .line 49
    .end local v0    # "this":Ljavafx/util/converter/ByteStringConverter;
    :goto_0
    return-object v0

    .line 43
    .restart local v0    # "this":Ljavafx/util/converter/ByteStringConverter;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 45
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 46
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 49
    :cond_1
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/ByteStringConverter;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/util/converter/ByteStringConverter;->fromString(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/util/converter/ByteStringConverter;
    return-object v0
.end method

.method public toString(Ljava/lang/Byte;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/ByteStringConverter;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Byte;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 56
    const-string v2, ""

    move-object v0, v2

    .line 59
    .end local v0    # "this":Ljavafx/util/converter/ByteStringConverter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/util/converter/ByteStringConverter;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/ByteStringConverter;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v2, v3}, Ljavafx/util/converter/ByteStringConverter;->toString(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/util/converter/ByteStringConverter;
    return-object v0
.end method
