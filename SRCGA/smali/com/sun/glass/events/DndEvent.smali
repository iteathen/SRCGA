.class public Lcom/sun/glass/events/DndEvent;
.super Ljava/lang/Object;
.source "DndEvent.java"


# static fields
.field public static final END:I = 0x267

.field public static final ENTER:I = 0x263

.field public static final EXIT:I = 0x266

.field public static final PERFORM:I = 0x265

.field public static final UPDATE:I = 0x264


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/events/DndEvent;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
