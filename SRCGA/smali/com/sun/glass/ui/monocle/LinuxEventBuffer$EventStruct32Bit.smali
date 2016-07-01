.class Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct32Bit;
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
    name = "EventStruct32Bit"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/glass/ui/monocle/LinuxEventBuffer;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/LinuxEventBuffer;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct32Bit;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct32Bit;->this$0:Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeIndex()I
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct32Bit;
    const/16 v1, 0xa

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct32Bit;
    return v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct32Bit;
    const/16 v1, 0x10

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct32Bit;
    return v0
.end method

.method public getTypeIndex()I
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct32Bit;
    const/16 v1, 0x8

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct32Bit;
    return v0
.end method

.method public getValueIndex()I
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct32Bit;
    const/16 v1, 0xc

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct32Bit;
    return v0
.end method
