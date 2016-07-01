.class public Lcom/sun/javafx/text/ScriptMapper;
.super Ljava/lang/Object;
.source "ScriptMapper.java"


# static fields
.field private static final CHAR_LIMIT:I

.field private static final CHAR_START:I = 0x0

.field public static final COMMON:I = 0x0

.field public static final INHERITED:I = 0x1

.field public static final INVALID:I = -0x1

.field public static final LATN:I = 0x19

.field private static final MAX_LAYOUT_CHARCODE:I = 0x206f

.field private static final MIN_LAYOUT_CHARCODE:I = 0x300

.field private static final UNKNOWN:I = 0x67

.field private static cache:I = 0x0

.field private static data:[I = null

.field private static final dataExtra:I

.field private static final dataPower:I = 0x200


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 185
    const/16 v0, 0x27c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/javafx/text/ScriptMapper;->data:[I

    .line 507
    sget-object v0, Lcom/sun/javafx/text/ScriptMapper;->data:[I

    array-length v0, v0

    const/16 v1, 0x200

    add-int/lit16 v0, v0, -0x200

    sput v0, Lcom/sun/javafx/text/ScriptMapper;->dataExtra:I

    .line 509
    sget-object v0, Lcom/sun/javafx/text/ScriptMapper;->data:[I

    sget-object v1, Lcom/sun/javafx/text/ScriptMapper;->data:[I

    array-length v1, v1

    const/4 v2, 0x2

    add-int/lit8 v1, v1, -0x2

    aget v0, v0, v1

    sput v0, Lcom/sun/javafx/text/ScriptMapper;->CHAR_LIMIT:I

    return-void

    .line 185
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x41
        0x19
        0x5b
        0x0
        0x61
        0x19
        0x7b
        0x0
        0xaa
        0x19
        0xab
        0x0
        0xba
        0x19
        0xbb
        0x0
        0xc0
        0x19
        0xd7
        0x0
        0xd8
        0x19
        0xf7
        0x0
        0xf8
        0x19
        0x2b9
        0x0
        0x2e0
        0x19
        0x2e5
        0x0
        0x2ea
        0x5
        0x2ec
        0x0
        0x300
        0x1
        0x370
        0xe
        0x374
        0x0
        0x375
        0xe
        0x37e
        0x0
        0x384
        0xe
        0x385
        0x0
        0x386
        0xe
        0x387
        0x0
        0x388
        0xe
        0x3e2
        0x7
        0x3f0
        0xe
        0x400
        0x8
        0x485
        0x1
        0x487
        0x8
        0x531
        0x3
        0x589
        0x0
        0x58a
        0x3
        0x591
        0x13
        0x600
        0x2
        0x60c
        0x0
        0x60d
        0x2
        0x61b
        0x0
        0x61e
        0x2
        0x61f
        0x0
        0x620
        0x2
        0x640
        0x0
        0x641
        0x2
        0x64b
        0x1
        0x656
        0x2
        0x65f
        0x1
        0x660
        0x0
        0x66a
        0x2
        0x670
        0x1
        0x671
        0x2
        0x6dd
        0x0
        0x6de
        0x2
        0x700
        0x22
        0x750
        0x2
        0x780
        0x25
        0x7c0
        0x57
        0x800
        0x7e
        0x840
        0x54
        0x8a0
        0x2
        0x900
        0xa
        0x951
        0x1
        0x953
        0xa
        0x964
        0x0
        0x966
        0xa
        0x981
        0x4
        0xa01
        0x10
        0xa81
        0xf
        0xb01
        0x1f
        0xb82
        0x23
        0xc01
        0x24
        0xc82
        0x16
        0xd02
        0x1a
        0xd82
        0x21
        0xe01
        0x26
        0xe3f
        0x0
        0xe40
        0x26
        0xe81
        0x18
        0xf00
        0x27
        0xfd5
        0x0
        0xfd9
        0x27
        0x1000
        0x1c
        0x10a0
        0xc
        0x10fb
        0x0
        0x10fc
        0xc
        0x1100
        0x12
        0x1200
        0xb
        0x13a0
        0x6
        0x1400
        0x28
        0x1680
        0x1d
        0x16a0
        0x20
        0x16eb
        0x0
        0x16ee
        0x20
        0x1700
        0x2a
        0x1720
        0x2b
        0x1735
        0x0
        0x1740
        0x2c
        0x1760
        0x2d
        0x1780
        0x17
        0x1800
        0x1b
        0x1802
        0x0
        0x1804
        0x1b
        0x1805
        0x0
        0x1806
        0x1b
        0x18b0
        0x28
        0x1900
        0x30
        0x1950
        0x34
        0x1980
        0x3b
        0x19e0
        0x17
        0x1a00
        0x37
        0x1a20
        0x67
        0x1b00
        0x3e
        0x1b80
        0x71
        0x1bc0
        0x3f
        0x1c00
        0x52
        0x1c50
        0x6d
        0x1cc0
        0x71
        0x1cd0
        0x1
        0x1cd3
        0x0
        0x1cd4
        0x1
        0x1ce1
        0x0
        0x1ce2
        0x1
        0x1ce9
        0x0
        0x1ced
        0x1
        0x1cee
        0x0
        0x1cf4
        0x1
        0x1cf5
        0x0
        0x1d00
        0x19
        0x1d26
        0xe
        0x1d2b
        0x8
        0x1d2c
        0x19
        0x1d5d
        0xe
        0x1d62
        0x19
        0x1d66
        0xe
        0x1d6b
        0x19
        0x1d78
        0x8
        0x1d79
        0x19
        0x1dbf
        0xe
        0x1dc0
        0x1
        0x1e00
        0x19
        0x1f00
        0xe
        0x2000
        0x0
        0x200c
        0x1
        0x200e
        0x0
        0x2071
        0x19
        0x2074
        0x0
        0x207f
        0x19
        0x2080
        0x0
        0x2090
        0x19
        0x20a0
        0x0
        0x20d0
        0x1
        0x2100
        0x0
        0x2126
        0xe
        0x2127
        0x0
        0x212a
        0x19
        0x212c
        0x0
        0x2132
        0x19
        0x2133
        0x0
        0x214e
        0x19
        0x214f
        0x0
        0x2160
        0x19
        0x2189
        0x0
        0x2800
        0x2e
        0x2900
        0x0
        0x2c00
        0x38
        0x2c60
        0x19
        0x2c80
        0x7
        0x2d00
        0xc
        0x2d30
        0x3c
        0x2d80
        0xb
        0x2de0
        0x8
        0x2e00
        0x0
        0x2e80
        0x11
        0x2ff0
        0x0
        0x3005
        0x11
        0x3006
        0x0
        0x3007
        0x11
        0x3008
        0x0
        0x3021
        0x11
        0x302a
        0x1
        0x302e
        0x12
        0x3030
        0x0
        0x3038
        0x11
        0x303c
        0x0
        0x3041
        0x14
        0x3099
        0x1
        0x309b
        0x0
        0x309d
        0x14
        0x30a0
        0x0
        0x30a1
        0x16
        0x30fb
        0x0
        0x30fd
        0x16
        0x3105
        0x5
        0x3131
        0x12
        0x3190
        0x0
        0x31a0
        0x5
        0x31c0
        0x0
        0x31f0
        0x16
        0x3200
        0x12
        0x3220
        0x0
        0x3260
        0x12
        0x327f
        0x0
        0x32d0
        0x16
        0x3358
        0x0
        0x3400
        0x11
        0x4dc0
        0x0
        0x4e00
        0x11
        0xa000
        0x29
        0xa4d0
        0x83
        0xa500
        0x63
        0xa640
        0x8
        0xa6a0
        0x82
        0xa700
        0x0
        0xa722
        0x19
        0xa788
        0x0
        0xa78b
        0x19
        0xa800
        0x3a
        0xa830
        0x0
        0xa840
        0x5a
        0xa880
        0x6f
        0xa8e0
        0xa
        0xa900
        0x4f
        0xa930
        0x6e
        0xa960
        0x12
        0xa980
        0x4e
        0xaa00
        0x42
        0xaa60
        0x1c
        0xaa80
        0x7f
        0xaae0
        0x67
        0xab01
        0xb
        0xabc0
        0x67
        0xac00
        0x12
        0xd7fc
        0x67
        0xf900
        0x11
        0xfb00
        0x19
        0xfb13
        0x3
        0xfb1d
        0x13
        0xfb50
        0x2
        0xfd3e
        0x0
        0xfd50
        0x2
        0xfdfd
        0x0
        0xfe00
        0x1
        0xfe10
        0x0
        0xfe20
        0x1
        0xfe30
        0x0
        0xfe70
        0x2
        0xfeff
        0x0
        0xff21
        0x19
        0xff3b
        0x0
        0xff41
        0x19
        0xff5b
        0x0
        0xff66
        0x16
        0xff70
        0x0
        0xff71
        0x16
        0xff9e
        0x0
        0xffa0
        0x12
        0xffe0
        0x0
        0x10000
        0x31
        0x10100
        0x0
        0x10140
        0xe
        0x10190
        0x0
        0x101fd
        0x1
        0x10280
        0x6b
        0x102a0
        0x68
        0x10300
        0x1e
        0x10330
        0xd
        0x10380
        0x35
        0x103a0
        0x3d
        0x10400
        0x9
        0x10450
        0x33
        0x10480
        0x32
        0x10800
        0x2f
        0x10840
        0x74
        0x10900
        0x5b
        0x10920
        0x4c
        0x10980
        0x56
        0x109a0
        0x8d
        0x10a00
        0x39
        0x10a60
        0x85
        0x10b00
        0x75
        0x10b40
        0x7d
        0x10b60
        0x7a
        0x10c00
        0x67
        0x10e60
        0x2
        0x11000
        0x41
        0x11080
        0x78
        0x110d0
        0x98
        0x11100
        0x76
        0x11180
        0x97
        0x11680
        0x99
        0x12000
        0x65
        0x13000
        0x47
        0x16800
        0x82
        0x16f00
        0x67
        0x1b000
        0x16
        0x1b001
        0x14
        0x1d000
        0x0
        0x1d167
        0x1
        0x1d16a
        0x0
        0x1d17b
        0x1
        0x1d183
        0x0
        0x1d185
        0x1
        0x1d18c
        0x0
        0x1d1aa
        0x1
        0x1d1ae
        0x0
        0x1d200
        0xe
        0x1d300
        0x0
        0x1ee00
        0x2
        0x1f000
        0x0
        0x1f200
        0x14
        0x1f201
        0x0
        0x20000
        0x11
        0xe0001
        0x0
        0xe0100
        0x1
        0xe01f0
        0x67
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/ScriptMapper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getScript(I)I
    .locals 8

    .prologue
    .line 43
    move v0, p0

    .local v0, "codePoint":I
    const-class v7, Lcom/sun/javafx/text/ScriptMapper;

    monitor-enter v7

    move v3, v0

    :try_start_0
    sget-object v4, Lcom/sun/javafx/text/ScriptMapper;->data:[I

    sget v5, Lcom/sun/javafx/text/ScriptMapper;->cache:I

    aget v4, v4, v5

    if-lt v3, v4, :cond_0

    move v3, v0

    sget-object v4, Lcom/sun/javafx/text/ScriptMapper;->data:[I

    sget v5, Lcom/sun/javafx/text/ScriptMapper;->cache:I

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    if-ge v3, v4, :cond_0

    .line 44
    sget-object v3, Lcom/sun/javafx/text/ScriptMapper;->data:[I

    sget v4, Lcom/sun/javafx/text/ScriptMapper;->cache:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    .line 65
    .end local v0    # "codePoint":I
    .local v1, "probe":I
    .local v2, "index":I
    :goto_0
    monitor-exit v7

    return v0

    .line 47
    .end local v1    # "probe":I
    .end local v2    # "index":I
    .restart local v0    # "codePoint":I
    :cond_0
    move v3, v0

    if-ltz v3, :cond_1

    move v3, v0

    :try_start_1
    sget v4, Lcom/sun/javafx/text/ScriptMapper;->CHAR_LIMIT:I

    if-lt v3, v4, :cond_2

    .line 48
    :cond_1
    const/16 v3, 0x67

    move v0, v3

    goto :goto_0

    .line 51
    :cond_2
    const/16 v3, 0x200

    move v1, v3

    .line 52
    .restart local v1    # "probe":I
    const/4 v3, 0x0

    move v2, v3

    .line 53
    .restart local v2    # "index":I
    move v3, v0

    sget-object v4, Lcom/sun/javafx/text/ScriptMapper;->data:[I

    sget v5, Lcom/sun/javafx/text/ScriptMapper;->dataExtra:I

    aget v4, v4, v5

    if-lt v3, v4, :cond_3

    .line 54
    sget v3, Lcom/sun/javafx/text/ScriptMapper;->dataExtra:I

    move v2, v3

    .line 57
    :cond_3
    :goto_1
    move v3, v1

    const/4 v4, 0x2

    if-le v3, v4, :cond_4

    .line 58
    move v3, v1

    const/4 v4, 0x1

    shr-int/lit8 v3, v3, 0x1

    move v1, v3

    .line 59
    move v3, v0

    sget-object v4, Lcom/sun/javafx/text/ScriptMapper;->data:[I

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    aget v4, v4, v5

    if-lt v3, v4, :cond_3

    .line 60
    move v3, v2

    move v4, v1

    add-int/2addr v3, v4

    move v2, v3

    goto :goto_1

    .line 64
    :cond_4
    move v3, v2

    sput v3, Lcom/sun/javafx/text/ScriptMapper;->cache:I

    .line 65
    sget-object v3, Lcom/sun/javafx/text/ScriptMapper;->data:[I

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    goto :goto_0

    .line 43
    .end local v1    # "probe":I
    .end local v2    # "index":I
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "codePoint":I
    throw v0
.end method

.method public static isComplexCharCode(I)Z
    .locals 3

    .prologue
    .line 105
    move v0, p0

    .local v0, "code":I
    move v1, v0

    const/16 v2, 0x300

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x206f

    if-le v1, v2, :cond_1

    .line 106
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    .line 169
    .end local v0    # "code":I
    :goto_0
    return v0

    .line 108
    .restart local v0    # "code":I
    :cond_1
    move v1, v0

    const/16 v2, 0x36f

    if-gt v1, v2, :cond_2

    .line 110
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 112
    :cond_2
    move v1, v0

    const/16 v2, 0x590

    if-ge v1, v2, :cond_3

    .line 114
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 116
    :cond_3
    move v1, v0

    const/16 v2, 0x6ff

    if-gt v1, v2, :cond_4

    .line 119
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 121
    :cond_4
    move v1, v0

    const/16 v2, 0x900

    if-ge v1, v2, :cond_5

    .line 122
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 124
    :cond_5
    move v1, v0

    const/16 v2, 0xe7f

    if-gt v1, v2, :cond_6

    .line 137
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 139
    :cond_6
    move v1, v0

    const/16 v2, 0xf00

    if-ge v1, v2, :cond_7

    .line 140
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 142
    :cond_7
    move v1, v0

    const/16 v2, 0xfff

    if-gt v1, v2, :cond_8

    .line 143
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 145
    :cond_8
    move v1, v0

    const/16 v2, 0x1100

    if-ge v1, v2, :cond_9

    .line 146
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 148
    :cond_9
    move v1, v0

    const/16 v2, 0x11ff

    if-ge v1, v2, :cond_a

    .line 149
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 151
    :cond_a
    move v1, v0

    const/16 v2, 0x1780

    if-ge v1, v2, :cond_b

    .line 152
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 154
    :cond_b
    move v1, v0

    const/16 v2, 0x17ff

    if-gt v1, v2, :cond_c

    .line 155
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 157
    :cond_c
    move v1, v0

    const/16 v2, 0x200c

    if-ge v1, v2, :cond_d

    .line 158
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 160
    :cond_d
    move v1, v0

    const/16 v2, 0x200d

    if-gt v1, v2, :cond_e

    .line 161
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 163
    :cond_e
    move v1, v0

    const/16 v2, 0x202a

    if-lt v1, v2, :cond_f

    move v1, v0

    const/16 v2, 0x202e

    if-gt v1, v2, :cond_f

    .line 164
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 166
    :cond_f
    move v1, v0

    const/16 v2, 0x206a

    if-lt v1, v2, :cond_10

    move v1, v0

    const/16 v2, 0x206f

    if-gt v1, v2, :cond_10

    .line 167
    const/4 v1, 0x1

    move v0, v1

    goto/16 :goto_0

    .line 169
    :cond_10
    const/4 v1, 0x0

    move v0, v1

    goto/16 :goto_0
.end method
