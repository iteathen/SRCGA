.class Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct64Bit;
.super Ljava/lang/Object;
.source "LinuxEventBuffer.java"

# interfaces
.implements Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventStruct64Bit"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/glass/ui/monocle/LinuxEventBuffer;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/LinuxEventBuffer;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct64Bit;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct64Bit;->this$0:Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeIndex()I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct64Bit;
    const/16 v1, 0x12

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct64Bit;
    return v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct64Bit;
    const/16 v1, 0x18

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct64Bit;
    return v0
.end method

.method public getTypeIndex()I
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct64Bit;
    const/16 v1, 0x10

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct64Bit;
    return v0
.end method

.method public getValueIndex()I
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct64Bit;
    const/16 v1, 0x14

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct64Bit;
    return v0
.end method
