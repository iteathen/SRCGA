.class public abstract Lcom/sun/javafx/jmx/MXExtension;
.super Ljava/lang/Object;
.source "MXExtension.java"


# static fields
.field private static final EXTENSION_CLASS_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "javafx.debug.jmx.class"

    const-string v1, "com.oracle.javafx.jmx.MXExtensionImpl"

    .line 32
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/jmx/MXExtension;->EXTENSION_CLASS_NAME:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/jmx/MXExtension;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeIfAvailable()V
    .locals 5

    .prologue
    .line 39
    :try_start_0
    sget-object v2, Lcom/sun/javafx/jmx/MXExtension;->EXTENSION_CLASS_NAME:Ljava/lang/String;

    .line 40
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .line 42
    .local v0, "mxExtensionClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sun/javafx/jmx/MXExtension;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/jmx/MXExtension;

    move-object v1, v2

    .line 43
    .local v1, "mxExtension":Lcom/sun/javafx/jmx/MXExtension;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/jmx/MXExtension;->intialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 49
    .end local v0    # "mxExtensionClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sun/javafx/jmx/MXExtension;>;"
    .end local v1    # "mxExtension":Lcom/sun/javafx/jmx/MXExtension;
    :goto_0
    return-void

    .line 44
    .restart local v0    # "mxExtensionClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sun/javafx/jmx/MXExtension;>;"
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getJavaFXLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Failed to initialize management extension"

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract intialize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
