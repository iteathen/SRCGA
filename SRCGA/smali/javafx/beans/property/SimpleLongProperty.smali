.class public Ljavafx/beans/property/SimpleLongProperty;
.super Ljavafx/beans/property/LongPropertyBase;
.source "SimpleLongProperty.java"


# static fields
.field private static final DEFAULT_BEAN:Ljava/lang/Object;

.field private static final DEFAULT_NAME:Ljava/lang/String; = ""


# instance fields
.field private final bean:Ljava/lang/Object;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Ljavafx/beans/property/SimpleLongProperty;->DEFAULT_BEAN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SimpleLongProperty;
    move-object v1, v0

    sget-object v2, Ljavafx/beans/property/SimpleLongProperty;->DEFAULT_BEAN:Ljava/lang/Object;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Ljavafx/beans/property/SimpleLongProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(J)V
    .locals 9

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SimpleLongProperty;
    move-wide v1, p1

    .local v1, "initialValue":J
    move-object v3, v0

    sget-object v4, Ljavafx/beans/property/SimpleLongProperty;->DEFAULT_BEAN:Ljava/lang/Object;

    const-string v5, ""

    move-wide v6, v1

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleLongProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;J)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SimpleLongProperty;
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/property/LongPropertyBase;-><init>()V

    .line 86
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/property/SimpleLongProperty;->bean:Ljava/lang/Object;

    .line 87
    move-object v3, v0

    move-object v4, v2

    if-nez v4, :cond_0

    const-string v4, ""

    :goto_0
    iput-object v4, v3, Ljavafx/beans/property/SimpleLongProperty;->name:Ljava/lang/String;

    .line 88
    return-void

    .line 87
    :cond_0
    move-object v4, v2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;J)V
    .locals 9

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SimpleLongProperty;
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-wide v3, p3

    .local v3, "initialValue":J
    move-object v5, v0

    move-wide v6, v3

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/LongPropertyBase;-><init>(J)V

    .line 102
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/beans/property/SimpleLongProperty;->bean:Ljava/lang/Object;

    .line 103
    move-object v5, v0

    move-object v6, v2

    if-nez v6, :cond_0

    const-string v6, ""

    :goto_0
    iput-object v6, v5, Ljavafx/beans/property/SimpleLongProperty;->name:Ljava/lang/String;

    .line 104
    return-void

    .line 103
    :cond_0
    move-object v6, v2

    goto :goto_0
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SimpleLongProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SimpleLongProperty;->bean:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/SimpleLongProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SimpleLongProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SimpleLongProperty;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/SimpleLongProperty;
    return-object v0
.end method
