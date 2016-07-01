.class Lsun/reflect/misc/MethodUtil$Signature;
.super Ljava/lang/Object;
.source "MethodUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/reflect/misc/MethodUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Signature"
.end annotation


# instance fields
.field private argClasses:[Ljava/lang/Class;

.field private volatile hashCode:I

.field private methodName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 4

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lsun/reflect/misc/MethodUtil$Signature;
    move-object v1, p1

    .local v1, "m":Ljava/lang/reflect/Method;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 222
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lsun/reflect/misc/MethodUtil$Signature;->hashCode:I

    .line 225
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lsun/reflect/misc/MethodUtil$Signature;->methodName:Ljava/lang/String;

    .line 226
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    iput-object v3, v2, Lsun/reflect/misc/MethodUtil$Signature;->argClasses:[Ljava/lang/Class;

    .line 227
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lsun/reflect/misc/MethodUtil$Signature;
    move-object v1, p1

    .local v1, "o2":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 231
    const/4 v4, 0x1

    move v0, v4

    .line 245
    .end local v0    # "this":Lsun/reflect/misc/MethodUtil$Signature;
    :goto_0
    return v0

    .line 233
    .restart local v0    # "this":Lsun/reflect/misc/MethodUtil$Signature;
    :cond_0
    move-object v4, v1

    check-cast v4, Lsun/reflect/misc/MethodUtil$Signature;

    move-object v2, v4

    .line 234
    .local v2, "that":Lsun/reflect/misc/MethodUtil$Signature;
    move-object v4, v0

    iget-object v4, v4, Lsun/reflect/misc/MethodUtil$Signature;->methodName:Ljava/lang/String;

    move-object v5, v2

    iget-object v5, v5, Lsun/reflect/misc/MethodUtil$Signature;->methodName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 235
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 237
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lsun/reflect/misc/MethodUtil$Signature;->argClasses:[Ljava/lang/Class;

    array-length v4, v4

    move-object v5, v2

    iget-object v5, v5, Lsun/reflect/misc/MethodUtil$Signature;->argClasses:[Ljava/lang/Class;

    array-length v5, v5

    if-eq v4, v5, :cond_2

    .line 238
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 240
    :cond_2
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lsun/reflect/misc/MethodUtil$Signature;->argClasses:[Ljava/lang/Class;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 241
    move-object v4, v0

    iget-object v4, v4, Lsun/reflect/misc/MethodUtil$Signature;->argClasses:[Ljava/lang/Class;

    move v5, v3

    aget-object v4, v4, v5

    move-object v5, v2

    iget-object v5, v5, Lsun/reflect/misc/MethodUtil$Signature;->argClasses:[Ljava/lang/Class;

    move v6, v3

    aget-object v5, v5, v6

    if-eq v4, v5, :cond_3

    .line 242
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 240
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 245
    :cond_4
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lsun/reflect/misc/MethodUtil$Signature;
    move-object v3, v0

    iget v3, v3, Lsun/reflect/misc/MethodUtil$Signature;->hashCode:I

    if-nez v3, :cond_2

    .line 254
    const/16 v3, 0x11

    move v1, v3

    .line 255
    .local v1, "result":I
    const/16 v3, 0x25

    move v4, v1

    mul-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Lsun/reflect/misc/MethodUtil$Signature;->methodName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v1, v3

    .line 256
    move-object v3, v0

    iget-object v3, v3, Lsun/reflect/misc/MethodUtil$Signature;->argClasses:[Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 257
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lsun/reflect/misc/MethodUtil$Signature;->argClasses:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 258
    const/16 v3, 0x25

    move v4, v1

    mul-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Lsun/reflect/misc/MethodUtil$Signature;->argClasses:[Ljava/lang/Class;

    move v5, v2

    aget-object v4, v4, v5

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 259
    :goto_1
    add-int/2addr v3, v4

    move v1, v3

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lsun/reflect/misc/MethodUtil$Signature;->argClasses:[Ljava/lang/Class;

    move v5, v2

    aget-object v4, v4, v5

    .line 259
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    .line 262
    .end local v2    # "i":I
    :cond_1
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lsun/reflect/misc/MethodUtil$Signature;->hashCode:I

    .line 264
    .end local v1    # "result":I
    :cond_2
    move-object v3, v0

    iget v3, v3, Lsun/reflect/misc/MethodUtil$Signature;->hashCode:I

    move v0, v3

    .end local v0    # "this":Lsun/reflect/misc/MethodUtil$Signature;
    return v0
.end method
