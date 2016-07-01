.class public Ljavafx/css/SimpleStyleableBooleanProperty;
.super Ljavafx/css/StyleableBooleanProperty;
.source "SimpleStyleableBooleanProperty.java"


# static fields
.field private static final DEFAULT_BEAN:Ljava/lang/Object;

.field private static final DEFAULT_NAME:Ljava/lang/String; = ""


# instance fields
.field private final bean:Ljava/lang/Object;

.field private final cssMetaData:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Ljavafx/css/SimpleStyleableBooleanProperty;->DEFAULT_BEAN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljavafx/css/CssMetaData;)V
    .locals 6
    .param p1    # Ljavafx/css/CssMetaData;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "cssMetaData"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/css/SimpleStyleableBooleanProperty;
    move-object v1, p1

    .local v1, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;Ljava/lang/Boolean;>;"
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Ljavafx/css/SimpleStyleableBooleanProperty;->DEFAULT_BEAN:Ljava/lang/Object;

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljavafx/css/SimpleStyleableBooleanProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljavafx/css/CssMetaData;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "cssMetaData"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "bean"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "name"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/css/SimpleStyleableBooleanProperty;
    move-object v1, p1

    .local v1, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;Ljava/lang/Boolean;>;"
    move-object v2, p2

    .local v2, "bean":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/css/StyleableBooleanProperty;-><init>()V

    .line 86
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/css/SimpleStyleableBooleanProperty;->bean:Ljava/lang/Object;

    .line 87
    move-object v4, v0

    move-object v5, v3

    if-nez v5, :cond_0

    const-string v5, ""

    :goto_0
    iput-object v5, v4, Ljavafx/css/SimpleStyleableBooleanProperty;->name:Ljava/lang/String;

    .line 88
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/css/SimpleStyleableBooleanProperty;->cssMetaData:Ljavafx/css/CssMetaData;

    .line 89
    return-void

    .line 87
    :cond_0
    move-object v5, v3

    goto :goto_0
.end method

.method public constructor <init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 7
    .param p1    # Ljavafx/css/CssMetaData;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "cssMetaData"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "bean"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "name"
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "initialValue"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/css/SimpleStyleableBooleanProperty;
    move-object v1, p1

    .local v1, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;Ljava/lang/Boolean;>;"
    move-object v2, p2

    .local v2, "bean":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    move v4, p4

    .local v4, "initialValue":Z
    move-object v5, v0

    move v6, v4

    invoke-direct {v5, v6}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    .line 105
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavafx/css/SimpleStyleableBooleanProperty;->bean:Ljava/lang/Object;

    .line 106
    move-object v5, v0

    move-object v6, v3

    if-nez v6, :cond_0

    const-string v6, ""

    :goto_0
    iput-object v6, v5, Ljavafx/css/SimpleStyleableBooleanProperty;->name:Ljava/lang/String;

    .line 107
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/css/SimpleStyleableBooleanProperty;->cssMetaData:Ljavafx/css/CssMetaData;

    .line 108
    return-void

    .line 106
    :cond_0
    move-object v6, v3

    goto :goto_0
.end method

.method public constructor <init>(Ljavafx/css/CssMetaData;Z)V
    .locals 8
    .param p1    # Ljavafx/css/CssMetaData;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "cssMetaData"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "initialValue"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/css/SimpleStyleableBooleanProperty;
    move-object v1, p1

    .local v1, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;Ljava/lang/Boolean;>;"
    move v2, p2

    .local v2, "initialValue":Z
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Ljavafx/css/SimpleStyleableBooleanProperty;->DEFAULT_BEAN:Ljava/lang/Object;

    const-string v6, ""

    move v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/css/SimpleStyleableBooleanProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 73
    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/css/SimpleStyleableBooleanProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/css/SimpleStyleableBooleanProperty;->bean:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/css/SimpleStyleableBooleanProperty;
    return-object v0
.end method

.method public final getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/css/SimpleStyleableBooleanProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/css/SimpleStyleableBooleanProperty;->cssMetaData:Ljavafx/css/CssMetaData;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/css/SimpleStyleableBooleanProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/css/SimpleStyleableBooleanProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/css/SimpleStyleableBooleanProperty;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/css/SimpleStyleableBooleanProperty;
    return-object v0
.end method
