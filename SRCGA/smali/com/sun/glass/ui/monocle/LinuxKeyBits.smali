.class Lcom/sun/glass/ui/monocle/LinuxKeyBits;
.super Lcom/sun/glass/ui/monocle/LinuxInput;
.source "LinuxKeyBits.java"


# static fields
.field static final KEYBITS_ARROWS:[S

.field static final KEYBITS_PC:[S

.field static final KEYBITS_SELECT:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/glass/ui/monocle/LinuxKeyBits;->KEYBITS_ARROWS:[S

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/glass/ui/monocle/LinuxKeyBits;->KEYBITS_SELECT:[S

    .line 43
    const/16 v0, 0x27

    new-array v0, v0, [S

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sun/glass/ui/monocle/LinuxKeyBits;->KEYBITS_PC:[S

    return-void

    .line 34
    :array_0
    .array-data 2
        0x67s
        0x6cs
        0x69s
        0x6as
    .end array-data

    .line 38
    :array_1
    .array-data 2
        0x1cs
        0x161s
    .end array-data

    .line 43
    :array_2
    .array-data 2
        0x1es
        0x30s
        0x2es
        0x20s
        0x12s
        0x21s
        0x22s
        0x23s
        0x17s
        0x24s
        0x25s
        0x26s
        0x32s
        0x31s
        0x18s
        0x19s
        0x10s
        0x13s
        0x1fs
        0x14s
        0x16s
        0x2fs
        0x11s
        0x2ds
        0x15s
        0x2cs
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xbs
        0x39s
        0x2as
        0xfs
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxKeyBits;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/LinuxInput;-><init>()V

    return-void
.end method
