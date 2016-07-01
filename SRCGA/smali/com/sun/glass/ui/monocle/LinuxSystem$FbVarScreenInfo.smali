.class Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;
.super Lcom/sun/glass/ui/monocle/C$Structure;
.source "LinuxSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/monocle/LinuxSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FbVarScreenInfo"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/C$Structure;-><init>()V

    .line 202
    # invokes: Lcom/sun/glass/ui/monocle/LinuxSystem;->checkPermissions()V
    invoke-static {}, Lcom/sun/glass/ui/monocle/LinuxSystem;->access$000()V

    .line 203
    return-void
.end method


# virtual methods
.method native getBitsPerPixel(J)I
.end method

.method native getOffsetX(J)I
.end method

.method native getOffsetY(J)I
.end method

.method native getXRes(J)I
.end method

.method native getXResVirtual(J)I
.end method

.method native getYRes(J)I
.end method

.method native getYResVirtual(J)I
.end method

.method native setActivate(JI)V
.end method

.method native setBitsPerPixel(JI)V
.end method

.method native setBlue(JII)V
.end method

.method native setGreen(JII)V
.end method

.method native setOffset(JII)V
.end method

.method native setRed(JII)V
.end method

.method native setRes(JII)V
.end method

.method native setTransp(JII)V
.end method

.method native setVirtualRes(JII)V
.end method

.method native sizeof()I
.end method
