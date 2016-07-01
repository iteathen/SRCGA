.class Lcom/sun/javafx/css/StyleManager$InstanceHolder;
.super Ljava/lang/Object;
.source "StyleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/StyleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/sun/javafx/css/StyleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 142
    new-instance v0, Lcom/sun/javafx/css/StyleManager;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/css/StyleManager;-><init>(Lcom/sun/javafx/css/StyleManager$1;)V

    sput-object v0, Lcom/sun/javafx/css/StyleManager$InstanceHolder;->INSTANCE:Lcom/sun/javafx/css/StyleManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$InstanceHolder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
