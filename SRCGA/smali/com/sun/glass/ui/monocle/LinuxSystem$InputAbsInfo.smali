.class Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;
.super Lcom/sun/glass/ui/monocle/C$Structure;
.source "LinuxSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/monocle/LinuxSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputAbsInfo"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/C$Structure;-><init>()V

    return-void
.end method

.method static native getFlat(J)I
.end method

.method static native getFuzz(J)I
.end method

.method static native getMaximum(J)I
.end method

.method static native getMinimum(J)I
.end method

.method static native getResolution(J)I
.end method

.method static native getValue(J)I
.end method


# virtual methods
.method native sizeof()I
.end method
