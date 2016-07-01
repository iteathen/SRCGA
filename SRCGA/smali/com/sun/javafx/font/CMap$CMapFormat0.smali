.class Lcom/sun/javafx/font/CMap$CMapFormat0;
.super Lcom/sun/javafx/font/CMap;
.source "CMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/CMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CMapFormat0"
.end annotation


# instance fields
.field cmap:[B


# direct methods
.method constructor <init>(Lcom/sun/javafx/font/FontFileReader$Buffer;I)V
    .locals 10

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CMap$CMapFormat0;
    move-object v1, p1

    .local v1, "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move v2, p2

    .local v2, "offset":I
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/font/CMap;-><init>()V

    .line 287
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar(I)C

    move-result v4

    move v3, v4

    .line 288
    .local v3, "len":I
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x6

    add-int/lit8 v5, v5, -0x6

    new-array v5, v5, [B

    iput-object v5, v4, Lcom/sun/javafx/font/CMap$CMapFormat0;->cmap:[B

    .line 289
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x6

    add-int/lit8 v5, v5, 0x6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/CMap$CMapFormat0;->cmap:[B

    const/4 v7, 0x0

    move v8, v3

    const/4 v9, 0x6

    add-int/lit8 v8, v8, -0x6

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/javafx/font/FontFileReader$Buffer;->get(I[BII)V

    .line 290
    return-void
.end method


# virtual methods
.method getGlyph(I)C
    .locals 5

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CMap$CMapFormat0;
    move v1, p1

    .local v1, "charCode":I
    move v2, v1

    const/16 v3, 0x100

    if-ge v2, v3, :cond_1

    .line 294
    move v2, v1

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 295
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 301
    :cond_0
    :pswitch_0
    const/16 v2, 0xff

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CMap$CMapFormat0;->cmap:[B

    move v4, v1

    aget-byte v3, v3, v4

    and-int/2addr v2, v3

    int-to-char v2, v2

    move v0, v2

    .line 303
    .end local v0    # "this":Lcom/sun/javafx/font/CMap$CMapFormat0;
    :goto_0
    return v0

    .line 298
    .restart local v0    # "this":Lcom/sun/javafx/font/CMap$CMapFormat0;
    :pswitch_1
    const v2, 0xffff

    move v0, v2

    goto :goto_0

    .line 303
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
