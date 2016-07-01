.class Lcom/sun/javafx/binding/Logging$LoggerHolder;
.super Ljava/lang/Object;
.source "Logging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/Logging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lsun/util/logging/PlatformLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "javafx.beans"

    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/binding/Logging$LoggerHolder;->INSTANCE:Lsun/util/logging/PlatformLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/Logging$LoggerHolder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lsun/util/logging/PlatformLogger;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sun/javafx/binding/Logging$LoggerHolder;->INSTANCE:Lsun/util/logging/PlatformLogger;

    return-object v0
.end method
