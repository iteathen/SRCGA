.class public Lcom/sun/javafx/image/impl/ByteArgb;
.super Ljava/lang/Object;
.source "ByteArgb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    }
.end annotation


# static fields
.field public static final accessor:Lcom/sun/javafx/image/BytePixelAccessor;

.field public static final getter:Lcom/sun/javafx/image/BytePixelGetter;

.field public static final setter:Lcom/sun/javafx/image/BytePixelSetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/sun/javafx/image/impl/ByteArgb$Accessor;->instance:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteArgb;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    .line 37
    sget-object v0, Lcom/sun/javafx/image/impl/ByteArgb$Accessor;->instance:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteArgb;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    .line 38
    sget-object v0, Lcom/sun/javafx/image/impl/ByteArgb$Accessor;->instance:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteArgb;->accessor:Lcom/sun/javafx/image/BytePixelAccessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteArgb;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
