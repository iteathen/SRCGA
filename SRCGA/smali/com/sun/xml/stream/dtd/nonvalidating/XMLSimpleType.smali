.class public Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;
.super Ljava/lang/Object;
.source "XMLSimpleType.java"


# static fields
.field public static final DEFAULT_TYPE_DEFAULT:S = 0x3s

.field public static final DEFAULT_TYPE_FIXED:S = 0x1s

.field public static final DEFAULT_TYPE_IMPLIED:S = 0x0s

.field public static final DEFAULT_TYPE_REQUIRED:S = 0x2s

.field public static final TYPE_CDATA:S = 0x0s

.field public static final TYPE_ENTITY:S = 0x1s

.field public static final TYPE_ENUMERATION:S = 0x2s

.field public static final TYPE_ID:S = 0x3s

.field public static final TYPE_IDREF:S = 0x4s

.field public static final TYPE_NAMED:S = 0x7s

.field public static final TYPE_NMTOKEN:S = 0x5s

.field public static final TYPE_NOTATION:S = 0x6s


# instance fields
.field public defaultType:S

.field public defaultValue:Ljava/lang/String;

.field public enumeration:[Ljava/lang/String;

.field public list:Z

.field public name:Ljava/lang/String;

.field public nonNormalizedDefaultValue:Ljava/lang/String;

.field public type:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;
    move-object v1, v0

    const/4 v2, -0x1

    iput-short v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    .line 197
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->name:Ljava/lang/String;

    .line 198
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    .line 199
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    .line 200
    move-object v1, v0

    const/4 v2, -0x1

    iput-short v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    .line 201
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    .line 202
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setValues(Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;)V
    .locals 7

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;
    move-object v1, p1

    .local v1, "simpleType":Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;
    move-object v2, v0

    move-object v3, v1

    iget-short v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    iput-short v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    .line 176
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->name:Ljava/lang/String;

    .line 178
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 179
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    .line 180
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    :goto_0
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    iput-boolean v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    .line 186
    move-object v2, v0

    move-object v3, v1

    iget-short v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    iput-short v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    .line 187
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    .line 188
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    .line 190
    return-void

    .line 183
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setValues(SLjava/lang/String;[Ljava/lang/String;ZSLjava/lang/String;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;
    move v1, p1

    .local v1, "type":S
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "enumeration":[Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "list":Z
    move/from16 v5, p5

    .local v5, "defaultType":S
    move-object/from16 v6, p6

    .local v6, "defaultValue":Ljava/lang/String;
    move-object/from16 v7, p7

    .local v7, "nonNormalizedDefaultValue":Ljava/lang/String;
    move-object v8, v0

    move v9, v1

    iput-short v9, v8, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    .line 156
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->name:Ljava/lang/String;

    .line 158
    move-object v8, v3

    if-eqz v8, :cond_0

    move-object v8, v3

    array-length v8, v8

    if-lez v8, :cond_0

    .line 159
    move-object v8, v0

    move-object v9, v3

    array-length v9, v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, v8, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    .line 160
    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    :goto_0
    move-object v8, v0

    move v9, v4

    iput-boolean v9, v8, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    .line 166
    move-object v8, v0

    move v9, v5

    iput-short v9, v8, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    .line 167
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    .line 168
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    .line 170
    return-void

    .line 163
    :cond_0
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    goto :goto_0
.end method
